#include "BRTOS.h"

#define NO_ALIGN    (INT8U)0
#define SPACE_ALIGN (INT8U)1
#define ZEROS_ALIGN (INT8U)2

#ifndef USE_UART1
#define USE_UART1	0
#define USE_UART2	1
#define USE_USB		2
#endif

void printSer(INT8U SerialPort, const CHAR8 *string);
void putcharSer(INT8U SerialPort, CHAR8 caracter);

void reverse(char s[]);
void IntToString(int n , char str[]);
INT32U StringToInteger(char p[]);
char *ltoa(long N, char *str, int base);

#if 0
// string.h
int strlen(char str[]);
void strcat(char dest[],  char src[]);
void strcpy(char dest[], char src[]);
int strcmp (char s1[] , char s2[]);
#endif

void Print4Digits(unsigned short int number, unsigned char align, char *buff);
void Print3Digits(unsigned short int number, unsigned char align, char *buff);
void Print2Digits(unsigned char number, unsigned char align, char *buff);
#if 0
void PrintDecimal(signed short int val, char *buff);
void PrintDateTime(OSDateTime *dt, CHAR8 *buff);
#endif

#define ByteSwap(A)     (A=(A<<8)+(A>>8))
INT32U LWordSwap(INT32U u32DataSwap);

/******************************************************************************/
/*                               Macros                                       */
/******************************************************************************/
#define BIT_SET(slovo, bit)     ((slovo) |= (1 << (bit)))
#define BIT_CLEAR(slovo, bit)   ((slovo) &= ~( 1 << (bit)))
#define BIT_TEST(slovo, bit)    ((slovo) & ( 1 << (bit)))
#define BIT_TOG(slovo, bit)     ((slovo) ^= (bit))

#define SIZEARRAY(a)            (sizeof(a) / sizeof(a[0]))

#define BITSET(x,y) 	(x) |= (1<<(y));
#define BITCLEAR(x,y) 	(x) &= ~(1<<(y));
#define BITTEST(x,y) 	((x) & (1<<(y)))
#define BITTOGGLE(x,y) 	(x) = (x) ^ (1<<(y));

#define BITSETMASK(x,y) 	(x) |= (y);
#define BITCLEARMASK(x,y) 	(x) &= ~(y);
#define BITTESTMASK(x,y) 	((x) & (y))
#define BITTOGGLEMASK(x,y) 	(x) = (x) ^ (y);

#ifndef MAX
#define MAX(a, b)               (((a) > (b)) ? (a):(b))
#endif
#ifndef MIN
#define MIN(a, b)               (((a) < (b)) ? (a):(b))
#endif
