#ifndef __ATOMIC_INL__
#define __ATOMIC_INL__

#include <sys/types.h>
#include <stdint.h>

#ifndef INLINE
# define INLINE extern inline __attribute__((__gnu_inline__))
#endif

/*helper macroses*/
#define ADD_DELTA(a_p, b)     *(a_p) += b
#define ADD_DELTA_RETURN(a_p, b)     return (*(a_p) += b)
#define CAS_RETURN(a_p,b,c)   return *(a_p) == b? *(a_p)=c : *(a_p)
#define BITWISE_OR(a_p, b)    *(a_p) |= b
#define BITWISE_AND(a_p, b)    *(a_p) &= b
#define INC(a_p)              ++*(a_p)
#define DEC(a_p)              --*(a_p)

/*
 * Increment target.
 */
INLINE void atomic_inc_8(volatile uint8_t *a) { INC(a); }
INLINE void atomic_inc_uchar(volatile uchar_t *a)  { INC(a); }
INLINE void atomic_inc_16(volatile uint16_t *a)  { INC(a); }
INLINE void atomic_inc_ushort(volatile ushort_t *a)  { INC(a); }
INLINE void atomic_inc_32(volatile uint32_t *a)  { INC(a); }
INLINE void atomic_inc_uint(volatile uint_t *a)  { INC(a); }
INLINE void atomic_inc_ulong(volatile ulong_t *a)  { INC(a); }
INLINE void atomic_inc_64(volatile uint64_t *a)  { INC(a); }

/*
 * Decrement target
 */
INLINE void atomic_dec_8(volatile uint8_t *a) { DEC(a); }
INLINE void atomic_dec_uchar(volatile uchar_t *a)  { DEC(a); }
INLINE void atomic_dec_16(volatile uint16_t *a)  { DEC(a); }
INLINE void atomic_dec_ushort(volatile ushort_t *a)  { DEC(a); }
INLINE void atomic_dec_32(volatile uint32_t *a)  { DEC(a); }
INLINE void atomic_dec_uint(volatile uint_t *a)  { DEC(a); }
INLINE void atomic_dec_ulong(volatile ulong_t *a)  { DEC(a); }
INLINE void atomic_dec_64(volatile uint64_t *a)  { DEC(a); }

/*
 * Add delta to target
 */
INLINE void atomic_add_8(volatile uint8_t *a, int8_t b){ ADD_DELTA(a, b); }
INLINE void atomic_add_char(volatile uchar_t *a, signed char b){ ADD_DELTA(a, b); }
INLINE void atomic_add_16(volatile uint16_t *a, int16_t b){ ADD_DELTA(a, b); }
INLINE void atomic_add_short(volatile ushort_t *a, short b){ ADD_DELTA(a, b); }
INLINE void atomic_add_32(volatile uint32_t *a, int32_t b){ ADD_DELTA(a, b); }
INLINE void atomic_add_int(volatile uint_t *a, int b){ ADD_DELTA(a, b); }
INLINE void atomic_add_ptr(volatile void *a, ssize_t b){ ADD_DELTA( (uint64_t*)a, b); }
INLINE void atomic_add_long(volatile ulong_t *a, long b){ ADD_DELTA(a, b); }
INLINE void atomic_add_64(volatile uint64_t *a, int64_t b){ ADD_DELTA( a, b); }

/*
 * logical OR bits with target
 */
INLINE void atomic_or_8(volatile uint8_t *a, uint8_t b) { BITWISE_OR(a,b); }
INLINE void atomic_or_uchar(volatile uchar_t *a, uchar_t b)  { BITWISE_OR(a,b); }
INLINE void atomic_or_16(volatile uint16_t *a, uint16_t b)  { BITWISE_OR(a,b); }
INLINE void atomic_or_ushort(volatile ushort_t *a, ushort_t b)  { BITWISE_OR(a,b); }
INLINE void atomic_or_32(volatile uint32_t *a, uint32_t b)  { BITWISE_OR(a,b); }
INLINE void atomic_or_uint(volatile uint_t *a, uint_t b)  { BITWISE_OR(a,b); }
INLINE void atomic_or_ulong(volatile ulong_t *a, ulong_t b)  { BITWISE_OR(a,b); }
INLINE void atomic_or_64(volatile uint64_t *a, uint64_t b)  { BITWISE_OR(a,b); }

/*
 * logical AND bits with target
 */
INLINE void atomic_and_8(volatile uint8_t *a, uint8_t b) { BITWISE_AND(a,b); }
INLINE void atomic_and_uchar(volatile uchar_t *a, uchar_t b) { BITWISE_AND(a,b); }
INLINE void atomic_and_16(volatile uint16_t *a, uint16_t b) { BITWISE_AND(a,b); }
INLINE void atomic_and_ushort(volatile ushort_t *a, ushort_t b) { BITWISE_AND(a,b); }
INLINE void atomic_and_32(volatile uint32_t *a, uint32_t b) { BITWISE_AND(a,b); }
INLINE void atomic_and_uint(volatile uint_t *a, uint_t b) { BITWISE_AND(a,b); }
INLINE void atomic_and_ulong(volatile ulong_t *a, ulong_t b) { BITWISE_AND(a,b); }
INLINE void atomic_and_64(volatile uint64_t *a, uint64_t b) { BITWISE_AND(a,b); }

/*
 * If *arg1 == arg2, set *arg1 = arg3; return old value
 */
INLINE uint8_t atomic_cas_8(volatile uint8_t *a, uint8_t b, uint8_t c) { CAS_RETURN(a,b,c); }
INLINE uchar_t atomic_cas_uchar(volatile uchar_t *a, uchar_t b, uchar_t c) { CAS_RETURN(a,b,c); }
INLINE uint16_t atomic_cas_16(volatile uint16_t *a, uint16_t b, uint16_t c) { CAS_RETURN(a,b,c); }
INLINE ushort_t atomic_cas_ushort(volatile ushort_t *a, ushort_t b, ushort_t c) { CAS_RETURN(a,b,c); }
INLINE uint32_t atomic_cas_32(volatile uint32_t *a, uint32_t b, uint32_t c) { CAS_RETURN(a,b,c); }
INLINE uint_t atomic_cas_uint(volatile uint_t *a, uint_t b, uint_t c) { CAS_RETURN(a,b,c);  }
INLINE void *atomic_cas_ptr(volatile void *a, void *b, void *c) { CAS_RETURN( (uint64_t**)a,b,c); }
INLINE ulong_t atomic_cas_ulong(volatile ulong_t *a, ulong_t b, ulong_t c) { CAS_RETURN(a,b,c); }
INLINE uint64_t atomic_cas_64(volatile uint64_t *a, uint64_t b, uint64_t c) { CAS_RETURN(a,b,c); }

/*
 * Increment target and return new value.
 */
INLINE uint8_t atomic_inc_8_nv(volatile uint8_t *a) { return (INC(a)); }
INLINE uchar_t atomic_inc_uchar_nv(volatile uchar_t *a) { return (INC(a)); }
INLINE uint16_t atomic_inc_16_nv(volatile uint16_t *a) { return (INC(a)); }
INLINE ushort_t atomic_inc_ushort_nv(volatile ushort_t *a) { return (INC(a)); }
INLINE uint32_t atomic_inc_32_nv(volatile uint32_t *a) { return (INC(a)); }
INLINE uint_t atomic_inc_uint_nv(volatile uint_t *a) { return (INC(a)); }
INLINE ulong_t atomic_inc_ulong_nv(volatile ulong_t *a) { return (INC(a)); }
INLINE uint64_t atomic_inc_64_nv(volatile uint64_t *a) { return (INC(a)); }

/*
 * Add delta to target and return the new value of target.
 */
INLINE uint8_t atomic_add_8_nv(volatile uint8_t *a, int8_t b) { ADD_DELTA_RETURN(a,b); }
INLINE uchar_t atomic_add_char_nv(volatile uchar_t *a, signed char b) { ADD_DELTA_RETURN(a,b); }
INLINE uint16_t atomic_add_16_nv(volatile uint16_t *a, int16_t b)  { ADD_DELTA_RETURN(a,b); }
INLINE ushort_t atomic_add_short_nv(volatile ushort_t *a, short b)  { ADD_DELTA_RETURN(a,b); }
INLINE uint32_t atomic_add_32_nv(volatile uint32_t *a, int32_t b)  { ADD_DELTA_RETURN(a,b); }
INLINE uint_t atomic_add_int_nv(volatile uint_t *a, int b)  { ADD_DELTA_RETURN(a,b); }
INLINE void *atomic_add_ptr_nv(volatile void *a, ssize_t b)  { ADD_DELTA((uint64_t*)a,b); return (void*)a; }
INLINE ulong_t atomic_add_long_nv(volatile ulong_t *a, long b)  { ADD_DELTA_RETURN(a,b); }
INLINE uint64_t atomic_add_64_nv(volatile uint64_t *a, int64_t b)  { ADD_DELTA_RETURN(a,b); }


INLINE void membar_enter(void){}

INLINE void membar_exit(void){}

INLINE void membar_producer(void){}

INLINE void membar_consumer(void){}

#endif //__ATOMIC_INL__
