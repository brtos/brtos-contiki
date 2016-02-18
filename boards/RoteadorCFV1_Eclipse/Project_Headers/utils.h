/******************************************************************************/
/*                               Macros                                       */
/******************************************************************************/
#define ByteSwap(A)     (A=(A<<8)+(A>>8))

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
