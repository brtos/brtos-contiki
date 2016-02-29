/*
 * board-colduino-conf.h
 *
 *  Created on: Jul 21, 2015
 *      Author: Universidade Federal
 */

#ifndef BOARD_PLATFORM_CONF_H_
#define BOARD_PLATFORM_CONF_H_

#include "BRTOS.h"

#define SLIP_USB	1
#define SLIP_UART	2

#define SLIP_COMM	SLIP_USB

#define BRTOS_ENDIAN           		  BRTOS_BIG_ENDIAN
#define NETSTACK_CONF_WITH_IPV6		  1

#define UIP_CONF_UDP                  1
#define UIP_CONF_TCP                  1

#define UIP_CONF_MAX_LISTENPORTS      2
#define UIP_CONF_MAX_CONNECTIONS      1

#define NETSTACK_CONF_WITH_RIME		  1

#define UIP_CONF_BUFFER_SIZE          1514 //1280
#define UIP_CONF_TCP_SPLIT            0
#define UIP_CONF_LOGGING              1
#define UIP_CONF_IP_FORWARD           0
#define UIP_CONF_UDP_CHECKSUMS        1

#if NETSTACK_CONF_WITH_IPV6
#define UIP_CONF_IPV6_QUEUE_PKT       	1
#define UIP_CONF_IPV6_CHECKS          	1
#define UIP_CONF_IPV6_REASSEMBLY      	1
//#define UIP_CONF_NETIF_MAX_ADDRESSES  5
#define NBR_TABLE_CONF_MAX_NEIGHBORS    6
#define UIP_CONF_DS6_DEFRT_NBU   		2
#define UIP_CONF_DS6_PREFIX_NBU  		3
#define UIP_CONF_MAX_ROUTES   			4
#define UIP_CONF_DS6_ADDR_NBU    		4
#define UIP_CONF_DS6_MADDR_NBU   		0
#define UIP_CONF_DS6_AADDR_NBU   		0
#define NETSTACK_CONF_NETWORK			sicslowpan_driver //rime_driver //null_network_driver
#else
#define UIP_CONF_IP_FORWARD          1
#endif /* NETSTACK_CONF_WITH_IPV6 */

#define WEBSERVER_CONF_STATUSPAGE   1

#define MMEM_CONF_SIZE			   		256
//#define IP64_ADDRMAP_CONF_ENTRIES  		8
//#define PROCESS_CONF_NUMEVENTS	   		10

#define RESOLV_CONF_SUPPORTS_MDNS              0
#define RESOLV_CONF_SUPPORTS_RECORD_EXPIRATION 0

/* Not used but avoids compile errors while sicslowpan.c is being developed */
#define SICSLOWPAN_CONF_COMPRESSION       SICSLOWPAN_COMPRESSION_HC06

#endif /* BOARD_PLATFORM_CONF_H_ */
