 /*
 * Copyright (c) 2015, Universidade Federal de Santa Maria.
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions
 * are met:
 * 1. Redistributions of source code must retain the above copyright
 *    notice, this list of conditions and the following disclaimer.
 * 2. Redistributions in binary form must reproduce the above copyright
 *    notice, this list of conditions and the following disclaimer in the
 *    documentation and/or other materials provided with the distribution.
 * 3. Neither the name of the Institute nor the names of its contributors
 *    may be used to endorse or promote products derived from this software
 *    without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE INSTITUTE AND CONTRIBUTORS ``AS IS'' AND
 * ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
 * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
 * ARE DISCLAIMED.  IN NO EVENT SHALL THE INSTITUTE OR CONTRIBUTORS BE LIABLE
 * FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
 * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS
 * OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
 * HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
 * LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY
 * OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF
 * SUCH DAMAGE.
 *
 * This file is part of the uFSM real time operating system.
 *
 * Author: Carlos H. Barriquello <barriquello@gmail.com>
 *
 */
/**
 * \file main.c
 * Entry point, system initialization
 * \author
 * Carlos H. Barriquello <barriquello@gmail.com>
 *
 */


#ifdef __cplusplus
 extern "C"
#endif

/* Contiki compatibility tests */

#include <stdio.h>
#include <assert.h>
#include <stdlib.h>

#include "contiki-net.h"
#include "sys/clock.h"

#include "sys/etimer.h"

#include "dev/serial-line.h"
#include "dev/slip.h"
 
#include "BRTOS.h"
extern BRTOS_Queue 	*USB;

int main_win(void);
int main_minimal_net(void);
void contiki_main(void);

/* for printf support */
extern void InitializeUART(void);
extern char ReadUARTN(void);
extern void WriteUARTN(char c);

#include "printf_lib.h"
#define printf(...)	printf_lib(__VA_ARGS__)
#define fprintf(...)
#define PRINTF(...)	printf_lib(__VA_ARGS__)



void print_lladdrs(void) ;

PROCINIT(&tcpip_process);

/* hack for "rand", because "rand" does not work in CFv1 */
#if BRTOS_CPU == COLDFIRE_V1 
int rand(void)
{
	return 1;
}
#endif


//#include "webserver-nogui.h"
/*---------------------------------------------------------------------------*/
//AUTOSTART_PROCESSES(&webserver_nogui_process);
/*---------------------------------------------------------------------------*/


void contiki_main(void)
{

  //main_win();
  main_minimal_net();

  for(;;)
  {
	  DelayTask(1000);
  } /* loop forever */

}

int main_win(void)
{

  /* Contiki test */
  process_init();
  procinit_init();

#if AUTOSTART_ENABLE
  autostart_start(autostart_processes);
#endif

#if !NETSTACK_CONF_WITH_IPV6
  {
    uip_ipaddr_t addr;
    uip_ipaddr(&addr, 10,1,1,1);
    uip_sethostaddr(&addr);
    log_message("IP Address:  ", inet_ntoa(*(struct in_addr*)&addr));

    uip_ipaddr(&addr, 255,0,0,0);
    uip_setnetmask(&addr);
    log_message("Subnet Mask: ", inet_ntoa(*(struct in_addr*)&addr));

    uip_ipaddr(&addr, 10,1,1,100);
    uip_setdraddr(&addr);
    log_message("Def. Router: ", inet_ntoa(*(struct in_addr*)&addr));

    uip_ipaddr(&addr, 10,1,1,1);
    uip_nameserver_update(&addr, UIP_NAMESERVER_INFINITE_LIFETIME);
    log_message("DNS Server:  ", inet_ntoa(*(struct in_addr*)&addr));
  }

#else /* NETSTACK_CONF_WITH_IPV6 */
#if !UIP_CONF_IPV6_RPL
#ifdef HARD_CODED_ADDRESS
  uip_ipaddr_t ipaddr;
  uiplib_ipaddrconv(HARD_CODED_ADDRESS, &ipaddr);
  if ((ipaddr.u16[0]!=0) || (ipaddr.u16[1]!=0) || (ipaddr.u16[2]!=0) || (ipaddr.u16[3]!=0)) {
#if UIP_CONF_ROUTER
    uip_ds6_prefix_add(&ipaddr, UIP_DEFAULT_PREFIX_LEN, 0, 0, 0, 0);
#else /* UIP_CONF_ROUTER */
    uip_ds6_prefix_add(&ipaddr, UIP_DEFAULT_PREFIX_LEN, 0);
#endif /* UIP_CONF_ROUTER */
#if !UIP_CONF_IPV6_RPL
    uip_ds6_set_addr_iid(&ipaddr, &uip_lladdr);
    uip_ds6_addr_add(&ipaddr, 0, ADDR_AUTOCONF);
#endif
  }
#endif /* HARD_CODED_ADDRESS */
#endif
#endif

  //fflush(stderr);
  while(1)
  {
		 process_run();
		 etimer_request_poll();
  }

  return 0;

  for(;;)
  {

  } /* loop forever */

}

#include <stdarg.h>
/*-----------------------------------------------------------------------------------*/
void
debug_printf(char *format, ...)
{
  
#if 0	
  va_list argptr;
  char buffer[256];

  va_start(argptr, format);
  vsprintf(buffer, format, argptr);
  va_end(argptr);

#if WITH_GUI
  OutputDebugString(buffer);
#else /* WITH_GUI */
  //fputs(buffer, stderr);
#endif /* WITH_GUI */
#endif
  while(1)
  {
#if BRTOS_CPU == COLDFIRE_V1		
		__RESET_WATCHDOG();
#endif		
  }
}
/*-----------------------------------------------------------------------------------*/
void
uip_log(char *message)
{
  printf("%s\n", message);
}
/*-----------------------------------------------------------------------------------*/
void
log_message(const char *part1, const char *part2)
{
  printf("%s%s\n", part1, part2);
}
/*-----------------------------------------------------------------------------------*/

/** minimal net */


#if RPL_BORDER_ROUTER
#include "net/rpl/rpl.h"

static uint16_t dag_id[] = {0x1111, 0x1100, 0, 0, 0, 0, 0, 0x0011};

PROCESS(border_router_process, "RPL Border Router");
PROCESS_THREAD(border_router_process, ev, data)
{

  PROCESS_BEGIN();

  PROCESS_PAUSE();
  {
    rpl_dag_t *dag;
    char buf[sizeof(dag_id)];
    memcpy(buf,dag_id,sizeof(dag_id));
    dag = rpl_set_root((uip_ip6addr_t *)buf);

    /* Assign separate addresses to the uip stack and the host network
        interface, but with the same prefix E.g. bbbb::ff:fe00:200 to
        the stack and bbbb::1 to the host *fallback* network interface
        Otherwise the host will trap packets intended for the stack,
        just as the stack will trap packets intended for the host
        $ifconfig usb0 -arp on Ubuntu to skip the neighbor
        solicitations. Add explicit neighbors on other OSs */

    if(dag != NULL) {
      printf("Created a new RPL dag\n");

#if UIP_CONF_ROUTER_RECEIVE_RA
      /* Contiki stack will shut down until assigned an address from the
	 interface RA Currently this requires changes in the core
	 rpl-icmp6.c to pass the link-local RA broadcast.
      */

#else
      {
	static void sprint_ip6(uip_ip6addr_t addr);
	int i;
	uip_ip6addr_t ipaddr;
#ifdef HARD_CODED_ADDRESS
	uiplib_ipaddrconv(HARD_CODED_ADDRESS, &ipaddr);
#else
	uip_ip6addr(&ipaddr, 0xbbbb, 0, 0, 0, 0, 0, 0, 0x1);
#endif
	uip_ds6_set_addr_iid(&ipaddr, &uip_lladdr);
	uip_ds6_addr_add(&ipaddr, 0, ADDR_AUTOCONF);
	rpl_set_prefix(dag, &ipaddr, 64);

	for(i = 0; i < UIP_DS6_ADDR_NB; i++) {
	  if(uip_ds6_if.addr_list[i].isused) {
	    printf("IPV6 Address: ");
	    sprint_ip6(uip_ds6_if.addr_list[i].ipaddr);
	    printf("\n");
	  }
	}
      }
#endif
    }
  }
  /* The border router runs with a 100% duty cycle in order to ensure high
     packet reception rates. */
  /* NETSTACK_MAC.off(1); */

  while(1) {
    PROCESS_YIELD();
    /* Local and global dag repair can be done from ? */
    /*  rpl_set_prefix(rpl_get_dag(RPL_ANY_INSTANCE), &ipaddr, 64);
	rpl_repair_dag(rpl_get_dag(RPL_ANY_INSTANCE)); */
  }

  PROCESS_END();
}
#endif /* RPL_BORDER_ROUTER */

#if NETSTACK_CONF_WITH_IPV6
/*---------------------------------------------------------------------------*/
static void
sprint_ip6(uip_ip6addr_t addr)
{
  unsigned char i = 0;
  unsigned char zerocnt = 0;
  unsigned char numprinted = 0;
  unsigned char notskipped = 0;
  char thestring[40];
  char *result = thestring;

  *result++ = '[';
  while(numprinted < 8) {
    if((addr.u16[i] == 0) && (zerocnt == 0)) {
      while(addr.u16[zerocnt + i] == 0) {
    	  zerocnt++;
      }
      if(zerocnt == 1 && notskipped) {
        *result++ = '0';
         numprinted++;
         notskipped = 1;
         continue;
      }
      i += zerocnt;
      numprinted += zerocnt;
    } else {
      result += sprintf(result, "%x", (unsigned int)(uip_ntohs(addr.u16[i])));
      i++;
      numprinted++;
    }
    if(numprinted != 8) {
      *result++ = ':';
    }
  }
  *result++=']';
  *result=0;
  PRINTF("%s", thestring);
}
#endif /* NETSTACK_CONF_WITH_IPV6 */
/*---------------------------------------------------------------------------*/


const linkaddr_t addr = {{0x00,0x00,0x00,0x06,0x98,0x00,0x02,0x32}};

int
main_minimal_net(void)
{

	clock_init();
	
	linkaddr_set_node_addr(&addr);
	memcpy(&uip_lladdr.addr, &linkaddr_node_addr.u8, sizeof(uip_lladdr.addr));
	
#if 0	
  	queuebuf_init();
  	NETSTACK_RDC.init();
  	NETSTACK_MAC.init();
  	NETSTACK_NETWORK.init();
#endif  	
  	
  process_init();
/* procinit_init initializes RPL which sets a ctimer for the first DIS */
/* We must start etimers and ctimers,before calling it */
  process_start(&etimer_process, NULL);
  ctimer_init();

  procinit_init();

#if AUTOSTART_ENABLE
  autostart_start(autostart_processes);
#endif

 #define DEBUG_ANNOTATE  1
 #if DEBUG_ANNOTATE
	print_lladdrs();
  #endif

  PRINTF("\n*******%s online*******\n",CONTIKI_VERSION_STRING);

  while(1) {

    int n;
    char c;
    INT8U ret,poll;
    clock_time_t next_event;

    do{
    	n = process_run();
    } while(n > 0);
    
         
#if 1    
     poll = 0;
     next_event = 2;
     do 
     {    
    	 wait_next_event:
    	 ret = OSQueuePend(USB, &c, (INT16U)next_event);    	 
    	 if(ret != TIMEOUT) 
		 {
    		 poll = 1;
    		 if(slip_input_byte(c) == 1)
			 {
				 break;
			 }
    		 
		 }else
		 {
			 if(!poll)
			 {
				 next_event = etimer_next_expiration_time() - clock_time();
				 if(next_event > (CLOCK_SECOND >> 1))
				 {
				     	next_event = CLOCK_SECOND >> 1;
				 }
				 if(((INT16U)next_event > 2))
				 {				 
					next_event = next_event - 2;
					goto wait_next_event;
				 }
			 }
			 break;
		 }
    	    	 
     }while(1);     
#endif     
     
     etimer_request_poll();
  }

  return 0;
}
/*---------------------------------------------------------------------------*/
#if 0
unsigned short
sensors_light1(void)
{
  static unsigned short count;
  return count++;
}
#endif
/*---------------------------------------------------------------------------*/

#if 1
void InitializeUART(void)
{
	while(1){
#if BRTOS_CPU == COLDFIRE_V1		
		__RESET_WATCHDOG();
#endif		
	}
	
}

char ReadUARTN(void)
{
	while(1){
#if BRTOS_CPU == COLDFIRE_V1		
		__RESET_WATCHDOG();
#endif		
		}
}

void WriteUARTN(char c)
{
	(void)c;
	while(1){
#if BRTOS_CPU == COLDFIRE_V1		
		__RESET_WATCHDOG();
#endif		
	}
}
#endif

void print_lladdrs(void) {	
	int i, a;
	printf("Tentative link-local IPv6 address ");
	
	for(a = 0; a < UIP_DS6_ADDR_NB; a++) {
		if (uip_ds6_if.addr_list[a].isused) {
			for(i = 0; i < 7; ++i) {
				printf("%02x%02x:",
				       uip_ds6_if.addr_list[a].ipaddr.u8[i * 2],
				       uip_ds6_if.addr_list[a].ipaddr.u8[i * 2 + 1]);
			}
			printf("%02x%02x\n",
			       uip_ds6_if.addr_list[a].ipaddr.u8[14],
			       uip_ds6_if.addr_list[a].ipaddr.u8[15]);
		}
	}
}

#if 0
void init(void)
{
	
}
 
void input(void)
{
	
}
/*---------------------------------------------------------------------------*/
const struct network_driver null_network_driver = {
  "Null Net",
  init,
  input
};
#endif



