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
 * \file contiki-main.c
 * Contiki OS task
 * \author
 * Carlos H. Barriquello <barriquello@gmail.com>
 *
 */


#ifdef __cplusplus
 extern "C"
#endif

/* Contiki compatibility tests */

//#include <stdio.h>
#include <assert.h>
#include <stdlib.h>

#include "contiki-net.h"
#include "sys/clock.h"

#include "sys/etimer.h"

#include "dev/serial-line.h"
#include "dev/slip.h"
#include "platform-conf.h"
 
#include "BRTOS.h"
BRTOS_Sem *Contiki_Sem;

int main_win(void); // for simulation on Win32
int main_minimal_net(void);
void init_net(uint8_t node_id);  /* to init network using mrf24j40 radio */

void contiki_main(void);

/* for printf support on CW */
#if (defined __CWCC__)
extern void InitializeUART(void);
extern char ReadUARTN(void);
extern void WriteUARTN(char c);
#endif

#include "printf_lib.h"
#define printf(...)		printf_lib(__VA_ARGS__)
#define sprintf(...)	sprintf_lib(NULL,__VA_ARGS__)
#define puts(s)	 		puts_lib(NULL,s)
#define fprintf(...)
#define PRINTF(...)		printf_lib(__VA_ARGS__)


void print_lladdrs(void) ;

PROCINIT(&tcpip_process);

/* hack for "rand", because rand() does not work in CFv1 */
#if BRTOS_CPU == COLDFIRE_V1 && !__GNUC__

/* see: http://www.embedded.com/design/configurable-systems/4024972/Generating-random-numbers 
 * Listing 3: Hard real-time PRNG*/

int rand(void)
{

#if 0
static unsigned int Y = 31468; // seed
const static unsigned int xorTable[128] = {
		0x81E4262E,0xC3736621,0x66B7C685,0xA2EA37B9,0x78268572,0xB5291A81,0x9DB2EA0C,0x91849EC4,
		0x13FCEB2B,0xAD07AB40,0x8BF9FA57,0x588A04D7,0xC0A3A591,0xC3EAB5C4,0xF9A870F0,0x7FBA9402,
		0xF241DEAE,0x03846579,0x14E84790,0xABD3C878,0x3F6B7C6C,0xA1E8BD41,0xA8729FD0,0x72642C9B,
		0xA9563B94,0x0C1C4AE8,0x68E2CCB2,0xA29DB861,0x1E5D399D,0x539FE57F,0x3205B629,0x270714F4,
		0xF8E6AAC0,0x60DC3E8D,0x8B5C5D69,0x8D71EF2B,0xCB8F2CFE,0x2E180841,0x5B7F0D8C,0x1C334D26,
		0x1CCD5A88,0x821ED40A,0x9FFAD1BF,0xC61D1FAF,0xC08E9056,0xAC3244BE,0xCF60C9B8,0x71BA4779,
		0x109E9A78,0x42F80EDC,0xFCCD97CB,0x0ABC7BBA,0xF826B21D,0xB58A9C90,0xCA89B5B7,0xEC714D43,
		0xA34C0E13,0x64B8646C,0x3F3505EF,0xE29936B6,0xC9FD1329,0x96DADD03,0xF22DE290,0xC02B44D3,
		0x81E4262E,0xC3736621,0x66B7C685,0xA2EA37B9,0x78268572,0xB5291A81,0x9DB2EA0C,0x91849EC4,
		0x13FCEB2B,0xAD07AB40,0x8BF9FA57,0x588A04D7,0xC0A3A591,0xC3EAB5C4,0xF9A870F0,0x7FBA9402,
		0xF241DEAE,0x03846579,0x14E84790,0xABD3C878,0x3F6B7C6C,0xA1E8BD41,0xA8729FD0,0x72642C9B,
		0xA9563B94,0x0C1C4AE8,0x68E2CCB2,0xA29DB861,0x1E5D399D,0x539FE57F,0x3205B629,0x270714F4,
		0xF8E6AAC0,0x60DC3E8D,0x8B5C5D69,0x8D71EF2B,0xCB8F2CFE,0x2E180841,0x5B7F0D8C,0x1C334D26,
		0x1CCD5A88,0x821ED40A,0x9FFAD1BF,0xC61D1FAF,0xC08E9056,0xAC3244BE,0xCF60C9B8,0x71BA4779,
		0x109E9A78,0x42F80EDC,0xFCCD97CB,0x0ABC7BBA,0xF826B21D,0xB58A9C90,0xCA89B5B7,0xEC714D43,
		0xA34C0E13,0x64B8646C,0x3F3505EF,0xE29936B6,0xC9FD1329,0x96DADD03,0xF22DE290,0xC02B44D3		
}; // random data
	
	static unsigned int iterations = 0, lastUpper = 0;	
	unsigned int r, n, pos1, pos2, choice;
	
	OS_SR_SAVE_VAR;

	OSEnterCritical(); // begin critical section
		r = Y;
		n = iterations;
		choice = lastUpper;
	OSExitCritical();// end critical section
	
	pos1 = (r ^ xorTable[choice & 0x3f]) + xorTable[n & 0x3f];
	pos2 = ~pos1;
	
r += ~r + ~n ^
   (xorTable[(n+r) & 0x7f] < (((r&=0x1f000000)>> 24))) ^
   (xorTable[choice & 0x7f] < (((r&=0x000f0000)>> 16))) ^
   (xorTable[pos2 & 0x7f] < (((r&=0x00001f00)>> 8))) ^
   (xorTable[pos1 & 0x7f] < (((r&=0x0000000f))))>
   (xorTable[(n+pos1) & 0x7f] >> (((r & 0x1f000000) >> 24))) ^
   (xorTable[choice & 0x7f] >> (((r & 0x001f0000) >> 16))) ^
   (xorTable[pos2 & 0x7f] >> (((r & 0x00000f00) >> 8))) ^
   (xorTable[(r+pos2) & 0x7f] >> (((r & 0x0000001f) )));

	choice=r>>24;
	
	OSEnterCritical(); // begin critical section
		Y = r;
		n++;
		lastUpper = r >> 24;
	OSExitCritical();// end critical section
	
	return (int)(Y);
}
#else

	static INT32U next = 1;	
	next = next * 1103515245 + 12345;
	return (int)(next>>16) & RAND_MAX;
}
#endif
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

  while(1)
  {
		 process_run();
		 etimer_request_poll();
  }

  return 0;

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
#define RPL_BORDER_ROUTER 0
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
	uip_ip6addr(&ipaddr, 0xaaaa, 0, 0, 0, 0, 0, 0, 0x1);
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

int
main_minimal_net(void)
{

	clock_init();
	process_init();

  /* procinit_init initializes RPL which sets a ctimer for the first DIS */
  /* We must start etimers and ctimers,before calling it */
	process_start(&etimer_process, NULL);
	ctimer_init();


#if 0
	/* declare a LL MAC address */
	const linkaddr_t addr = {{0x00,0x00,0x00,0x06,0x98,0x00,0x02,0x35}};

	linkaddr_set_node_addr((linkaddr_t*)&addr);
	memcpy(&uip_lladdr.addr, &linkaddr_node_addr.u8, sizeof(uip_lladdr.addr));

  	queuebuf_init();
  	netstack_init();
#else

#if BRTOS_PLATFORM == BOARD_FRDM_KL25Z
  	#define PAN_COORDINATOR 			1
	#define NODE_ID 					1
#else
	#define NODE_ID 					2
#endif
  	init_net(NODE_ID);
#endif  	
  	
  procinit_init();

#if AUTOSTART_ENABLE
  autostart_start(autostart_processes);
#endif

 #define DEBUG_ANNOTATE  0
 #if DEBUG_ANNOTATE
	print_lladdrs();
  #endif

  OSSemBinaryCreate (0, &Contiki_Sem);

  PRINTF("\n*******%s online*******\n\r",CONTIKI_VERSION_STRING);

  while(1) {

    int n;

    do{
    	n = process_run();
    } while(n > 0);

    OSSemPend(Contiki_Sem, 0);

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

#if (defined __CWCC__)
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

/*---------------------------------------------------------------------------*/
void
init_net(uint8_t node_id)
{
  uint16_t shortaddr;
  uint64_t longaddr;
  linkaddr_t addr;
#if NETSTACK_CONF_WITH_IPV6
  uip_ds6_addr_t *lladdr;
  uip_ipaddr_t ipaddr;
#endif

  uint8_t i;

  memset(&shortaddr, 0, sizeof(shortaddr));
  memset(&longaddr, 0, sizeof(longaddr));
  *((uint8_t *)&shortaddr) = node_id >> 8;
  *((uint8_t *)&shortaddr + 1) = node_id;
  *((uint8_t *)&longaddr) = node_id >> 8;
  *((uint8_t *)&longaddr + 1) = node_id;
  for(i = 2; i < sizeof(longaddr); ++i) {
    ((uint8_t *)&longaddr)[i] = random_rand();
  }

  PRINTF("SHORT MAC ADDRESS %02x:%02x\n",
         *((uint8_t *) & shortaddr), *((uint8_t *) & shortaddr + 1));

  PRINTF("EXTENDED MAC ADDRESS %02x:%02x:%02x:%02x:%02x:%02x:%02x:%02x\n",
         *((uint8_t *)&longaddr),
         *((uint8_t *)&longaddr + 1),
         *((uint8_t *)&longaddr + 2),
         *((uint8_t *)&longaddr + 3),
         *((uint8_t *)&longaddr + 4),
         *((uint8_t *)&longaddr + 5),
         *((uint8_t *)&longaddr + 6),
         *((uint8_t *)&longaddr + 7));

  memset(&addr, 0, sizeof(linkaddr_t));

  for(i = 0; i < sizeof(addr.u8); ++i) {
    addr.u8[i] = ((uint8_t *)&longaddr)[i];
  }

  linkaddr_set_node_addr(&addr);

  PRINTF("Rime started with address: ");
  for(i = 0; i < sizeof(addr.u8) - 1; ++i) {
    PRINTF("%d.", addr.u8[i]);
  }
  PRINTF("%d\n", addr.u8[i]);

  queuebuf_init();

#include "../mrf24j40/mrf24j40.h"
#define RF_CHANNEL MRF24J40_DEFAULT_CHANNEL

  if(node_id==1) mrf24j40_set_as_pan_coordinator(1);
  else mrf24j40_set_as_pan_coordinator(0);

  NETSTACK_RADIO.init();

  mrf24j40_set_channel(RF_CHANNEL);
  mrf24j40_set_panid(IEEE802154_PANID);
  mrf24j40_set_short_mac_addr(shortaddr);
  mrf24j40_set_extended_mac_addr(longaddr);

  NETSTACK_RDC.init();
  NETSTACK_MAC.init();
  NETSTACK_NETWORK.init();

  PRINTF("%s %s, channel check rate %d Hz, radio channel %u\n",
         NETSTACK_MAC.name, NETSTACK_RDC.name,
         CLOCK_SECOND / (NETSTACK_RDC.channel_check_interval() == 0 ? 1 :
                         NETSTACK_RDC.channel_check_interval()), RF_CHANNEL);

#if NETSTACK_CONF_WITH_IPV6

#if LINKADDR_CONF_SIZE == 2
  memset(&uip_lladdr.addr, 0, sizeof(uip_lladdr.addr));
  uip_lladdr.addr[3] = 0xff;
  uip_lladdr.addr[4]= 0xfe;
  memcpy(&uip_lladdr.addr[6], &shortaddr, sizeof(shortaddr));
#else
  memcpy(&uip_lladdr.addr, &longaddr, sizeof(uip_lladdr.addr));
#endif

#if NETSTACK_CONF_WITH_IPV6 || NETSTACK_CONF_WITH_IPV4
  process_start(&tcpip_process, NULL);
#endif

  lladdr = uip_ds6_get_link_local(-1);

  PRINTF("Tentative link-local IPv6 address ");

  for(i = 0; i < 7; ++i) {
    PRINTF("%02x%02x:", lladdr->ipaddr.u8[i * 2], lladdr->ipaddr.u8[i * 2 + 1]);
  }

  PRINTF("%02x%02x\n", lladdr->ipaddr.u8[14], lladdr->ipaddr.u8[15]);

  #if(!UIP_CONF_IPV6_RPL)
  {
    uip_ip6addr(&ipaddr, 0x2001, 0x1418, 0x100, 0x823c, 0, 0, 0, 0);
    uip_ds6_set_addr_iid(&ipaddr, &uip_lladdr);
    uip_ds6_addr_add(&ipaddr, 0, ADDR_TENTATIVE);

    PRINTF("Tentative global IPv6 address ");

    for(i = 0; i < 7; ++i) {
      PRINTF("%02x%02x:", ipaddr.u8[i * 2], ipaddr.u8[i * 2 + 1]);
    }

    PRINTF("%02x%02x\n", ipaddr.u8[7 * 2], ipaddr.u8[7 * 2 + 1]);
  }
  #endif
#endif
}
/*---------------------------------------------------------------------------*/


