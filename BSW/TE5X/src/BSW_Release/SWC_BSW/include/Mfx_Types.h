

#ifndef MFX_TYPES_H
#define MFX_TYPES_H


/*
 **********************************************************************************************************************
 * Specific data types
 **********************************************************************************************************************
 */

/* 64 bit integer data types */
typedef unsigned long long Mfx_uint64;
typedef signed long long   Mfx_sint64;

/* Union for internal access to 64 bit integer values */
typedef struct
{
    #if ((defined (CPU_BYTE_ORDER)) && (CPU_BYTE_ORDER == HIGH_BYTE_FIRST))
    sint32 h;
    uint32 l;
    #else
    uint32 l;
    sint32 h;
    #endif
} Mfx_sint64s;

/*MR12 RULE 19.2 VIOLATION: Union is used for faster computation, without usage of union code size will increase.*/
typedef union
{
    Mfx_sint64  s64;
    Mfx_sint64s s64s;
} Mfx_sint64u;


typedef struct
{
    #if ((defined (CPU_BYTE_ORDER)) && (CPU_BYTE_ORDER == HIGH_BYTE_FIRST))
    uint32 h;
    uint32 l;

    #else
    uint32 l;
    uint32 h;

    #endif
} Mfx_uint64s;

/*MR12 RULE 19.2 VIOLATION: Union is used for faster computation, without usage of union code size will increase.*/
typedef union
{
    Mfx_uint64  u64;
    Mfx_uint64s u64s;
} Mfx_uint64u;


/* Activation of specific AR version */

#define MFX_AR42                        0
#define MFX_AR44                        1

#define MFX_ENABLED_AR_VERSION          MFX_AR42
/*
 **********************************************************************************************************************
 * Hash defines, symbols
 **********************************************************************************************************************
 */

#define MFX_MAXUINT8        (0xff)
#define MFX_MAXUINT8_U      (0xffu)
#define MFX_MINUINT8        (0x0)
#define MFX_MINUINT8_U      (0x0u)
#define MFX_MAXSINT8        (0x7f)
#define MFX_MAXSINT8_U      (0x7fu)
#define MFX_MINSINT8        (-(MFX_MAXSINT8) - 1)
#define MFX_MINSINT8_U      (0x80u)
#define MFX_MAXUINT16       (0xffff)
#define MFX_MAXUINT16_U     (0xffffu)
#define MFX_MINUINT16       (0x0)
#define MFX_MINUINT16_U     (0x0u)
#define MFX_MAXSINT16       (0x7fff)
#define MFX_MAXSINT16_U     (0x7fffu)
#define MFX_MINSINT16       (-(MFX_MAXSINT16) - 1)
#define MFX_MINSINT16_U     (0x8000u)
#define MFX_MAXUINT32       (0xffffffffuL)
#define MFX_MINUINT32       (0x0uL)
#define MFX_MAXSINT32       (0x7fffffffL)
#define MFX_MAXSINT32_U     (0x7fffffffUL)
#define MFX_MINSINT32       (-(MFX_MAXSINT32) - 1L)
#define MFX_MINSINT32_U     (0x80000000UL)
#define MFX_MAXSINT64       (0x7FFFFFFFFFFFFFFFLL)
#define MFX_MINSINT64       (-(MFX_MAXSINT64) - 1LL)




/* MFX_TYPES_H */
#endif
