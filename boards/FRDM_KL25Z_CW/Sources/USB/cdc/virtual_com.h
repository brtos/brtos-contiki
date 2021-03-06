/******************************************************************************
 *
 * Freescale Semiconductor Inc.
 * (c) Copyright 2004-2009 Freescale Semiconductor, Inc.
 * ALL RIGHTS RESERVED.
 *
 **************************************************************************//*!
 *
 * @file virtual_com.h
 *
 * @author 
 *
 * @version 
 *
 * @date May-28-2009
 *
 * @brief The file contains Macro's and functions required for Virtual COM  
 *        Loopback Application
 *
 *****************************************************************************/

#ifndef _VIRTUAL_COM_H
#define _VIRTUAL_COM_H

#include "types.h"
#include "BRTOS.h"

/******************************************************************************
 * Constants - None
 *****************************************************************************/

/******************************************************************************
 * Macro's
 *****************************************************************************/
#define  CONTROLLER_ID      (0)   /* ID to identify USB CONTROLLER */ 

#define  KBI_STAT_MASK      (0x0F)

/* 
   DATA_BUFF_SIZE should be greater than or equal to the endpoint buffer size, 
   otherwise there will be data loss. For MC9S08JS16, maximum DATA_BUFF_SIZE 
   supported is 16 Bytes
*/
#ifndef _MC9S08JS16_H
#define  DATA_BUFF_SIZE     (64+1)
#else
#define  DATA_BUFF_SIZE     (16)
#endif

/*****************************************************************************
 * Global variables
 *****************************************************************************/
// Declara um ponteiro para o bloco de controle da Porta Serial
extern BRTOS_Queue *USB;

#define USB_RX_BUFF_SIZE		(256)

/*****************************************************************************
 * Global Functions
 *****************************************************************************/
extern void cdc_Init(void);
extern void cdc_process(void);
extern void USB_Init(void);
unsigned char cdc_putch(char c);
extern uint_8 GetStart_transactions(void);

#endif 
