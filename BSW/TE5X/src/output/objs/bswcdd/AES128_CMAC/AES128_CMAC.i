# 1 "bswcdd\\AES128_CMAC\\AES128_CMAC.c"
# 1 "D:\\1_OutProjest\\dongfeng\\90080-05101\\trunk\\BSW\\20Proj\\BSW\\TE5X\\src//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\tricore\\include\\stdc-predef.h" 1 3
# 1 "<command-line>" 2
# 1 "bswcdd\\AES128_CMAC\\AES128_CMAC.c"
# 23 "bswcdd\\AES128_CMAC\\AES128_CMAC.c"
# 1 "bswcdd\\AES128_CMAC\\AES128_CMAC.h" 1






# 1 ".\\output\\inc/Std_Types.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Std_Types.h" 1
# 21 ".\\output\\inc/..\\..\\bsw\\integration\\Std_Types.h"
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Platform_Types.h" 1
# 13 ".\\output\\inc/..\\..\\bsw\\integration\\Platform_Types.h"
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Platform_Types_Cfg.h" 1
# 14 ".\\output\\inc/..\\..\\bsw\\integration\\Platform_Types.h" 2
# 76 ".\\output\\inc/..\\..\\bsw\\integration\\Platform_Types.h"
typedef signed char sint8;




typedef unsigned char uint8;




typedef signed short sint16;




typedef unsigned short uint16;




typedef signed int sint32;




typedef signed long long sint64;




typedef unsigned int uint32;




typedef unsigned long long uint64;





typedef float float32;


typedef double float64;







typedef unsigned char boolean;






typedef signed long sint8_least;


typedef unsigned long uint8_least;




typedef signed long sint16_least;




typedef unsigned long uint16_least;




typedef signed long sint32_least;




typedef unsigned long uint32_least;
# 22 ".\\output\\inc/..\\..\\bsw\\integration\\Std_Types.h" 2
# 1 ".\\output\\inc/Compiler.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\Compiler.h" 1
# 44 ".\\output\\inc/..\\..\\Integration\\mcal\\Compiler.h"
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\Compiler_Cfg.h" 1
# 50 ".\\output\\inc/..\\..\\Integration\\mcal\\Compiler_Cfg.h"
# 1 ".\\output\\inc/Os_Compiler_Cfg.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\os\\Os_Compiler_Cfg.h" 1





# 1 ".\\output\\inc/Compiler.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\Compiler.h" 1
# 2 ".\\output\\inc/Compiler.h" 2
# 7 ".\\output\\inc/..\\..\\Integration\\os\\Os_Compiler_Cfg.h" 2
# 2 ".\\output\\inc/Os_Compiler_Cfg.h" 2
# 51 ".\\output\\inc/..\\..\\Integration\\mcal\\Compiler_Cfg.h" 2
# 45 ".\\output\\inc/..\\..\\Integration\\mcal\\Compiler.h" 2
# 2 ".\\output\\inc/Compiler.h" 2
# 23 ".\\output\\inc/..\\..\\bsw\\integration\\Std_Types.h" 2
# 72 ".\\output\\inc/..\\..\\bsw\\integration\\Std_Types.h"
    typedef unsigned char StatusType;
# 96 ".\\output\\inc/..\\..\\bsw\\integration\\Std_Types.h"
typedef uint8 Std_ReturnType;



typedef struct
{
    uint16 vendorID;
    uint16 moduleID;
    uint8 sw_major_version;
    uint8 sw_minor_version;
    uint8 sw_patch_version;
} Std_VersionInfoType;
# 2 ".\\output\\inc/Std_Types.h" 2
# 8 "bswcdd\\AES128_CMAC\\AES128_CMAC.h" 2
# 44 "bswcdd\\AES128_CMAC\\AES128_CMAC.h"
extern void AES128CMAC_vidEncrypt(const uint8* key, const uint8* message, uint8 message_len, uint8* cmac_value);
# 24 "bswcdd\\AES128_CMAC\\AES128_CMAC.c" 2
# 56 "bswcdd\\AES128_CMAC\\AES128_CMAC.c"
static const uint32 rcon[10] = {
        0x01000000UL, 0x02000000UL, 0x04000000UL, 0x08000000UL, 0x10000000UL,
        0x20000000UL, 0x40000000UL, 0x80000000UL, 0x1B000000UL, 0x36000000UL
};

static const uint8 S_Box[256] = {
    0x63, 0x7C, 0x77, 0x7B, 0xF2, 0x6B, 0x6F, 0xC5, 0x30, 0x01, 0x67, 0x2B, 0xFE, 0xD7, 0xAB, 0x76,
    0xCA, 0x82, 0xC9, 0x7D, 0xFA, 0x59, 0x47, 0xF0, 0xAD, 0xD4, 0xA2, 0xAF, 0x9C, 0xA4, 0x72, 0xC0,
    0xB7, 0xFD, 0x93, 0x26, 0x36, 0x3F, 0xF7, 0xCC, 0x34, 0xA5, 0xE5, 0xF1, 0x71, 0xD8, 0x31, 0x15,
    0x04, 0xC7, 0x23, 0xC3, 0x18, 0x96, 0x05, 0x9A, 0x07, 0x12, 0x80, 0xE2, 0xEB, 0x27, 0xB2, 0x75,
    0x09, 0x83, 0x2C, 0x1A, 0x1B, 0x6E, 0x5A, 0xA0, 0x52, 0x3B, 0xD6, 0xB3, 0x29, 0xE3, 0x2F, 0x84,
    0x53, 0xD1, 0x00, 0xED, 0x20, 0xFC, 0xB1, 0x5B, 0x6A, 0xCB, 0xBE, 0x39, 0x4A, 0x4C, 0x58, 0xCF,
    0xD0, 0xEF, 0xAA, 0xFB, 0x43, 0x4D, 0x33, 0x85, 0x45, 0xF9, 0x02, 0x7F, 0x50, 0x3C, 0x9F, 0xA8,
    0x51, 0xA3, 0x40, 0x8F, 0x92, 0x9D, 0x38, 0xF5, 0xBC, 0xB6, 0xDA, 0x21, 0x10, 0xFF, 0xF3, 0xD2,
    0xCD, 0x0C, 0x13, 0xEC, 0x5F, 0x97, 0x44, 0x17, 0xC4, 0xA7, 0x7E, 0x3D, 0x64, 0x5D, 0x19, 0x73,
    0x60, 0x81, 0x4F, 0xDC, 0x22, 0x2A, 0x90, 0x88, 0x46, 0xEE, 0xB8, 0x14, 0xDE, 0x5E, 0x0B, 0xDB,
    0xE0, 0x32, 0x3A, 0x0A, 0x49, 0x06, 0x24, 0x5C, 0xC2, 0xD3, 0xAC, 0x62, 0x91, 0x95, 0xE4, 0x79,
    0xE7, 0xC8, 0x37, 0x6D, 0x8D, 0xD5, 0x4E, 0xA9, 0x6C, 0x56, 0xF4, 0xEA, 0x65, 0x7A, 0xAE, 0x08,
    0xBA, 0x78, 0x25, 0x2E, 0x1C, 0xA6, 0xB4, 0xC6, 0xE8, 0xDD, 0x74, 0x1F, 0x4B, 0xBD, 0x8B, 0x8A,
    0x70, 0x3E, 0xB5, 0x66, 0x48, 0x03, 0xF6, 0x0E, 0x61, 0x35, 0x57, 0xB9, 0x86, 0xC1, 0x1D, 0x9E,
    0xE1, 0xF8, 0x98, 0x11, 0x69, 0xD9, 0x8E, 0x94, 0x9B, 0x1E, 0x87, 0xE9, 0xCE, 0x55, 0x28, 0xDF,
    0x8C, 0xA1, 0x89, 0x0D, 0xBF, 0xE6, 0x42, 0x68, 0x41, 0x99, 0x2D, 0x0F, 0xB0, 0x54, 0xBB, 0x16
};

static uint32 u32EncryptArray[44] = {0};




static inline void loadStateArray(uint8 (*state)[4], const uint8 *in);
static inline void storeStateArray(uint8 (*state)[4], uint8 *out);
static inline void keyExpansion(const uint8 *key, uint32 keyLen);
static inline void addRoundKey(uint8 (*state)[4], const uint32 *key);
static inline void subBytes(uint8 (*state)[4]);
static inline void shiftRows(uint8 (*state)[4]);
static void AES128Encrypt(const uint8 *key, uint32 keyLen, const uint8 *pt, uint8 *ct);
static inline void generate_subkeys(const uint8* key, uint8* k1, uint8* k2);
static inline uint8 GMul(uint8 u, uint8 v);
static inline uint8 mixColumns(uint8 (*state)[4]);





static inline void loadStateArray(uint8 (*state)[4], const uint8 *in)
{
    uint8 i, j;
    for (i = 0; i < 4; ++i)
    {
        for (j = 0; j < 4; ++j)
        {
            state[j][i] = *in++;
        }
    }
}

static inline void storeStateArray(uint8 (*state)[4], uint8 *out)
{
    uint8 i, j;
    for (i = 0; i < 4; ++i)
    {
        for (j = 0; j < 4; ++j)
        {
            *out++ = state[j][i];
        }
    }
}


static inline void keyExpansion(const uint8 *key, uint32 keyLen)
{
    uint32 *w = u32EncryptArray;
    uint8 i;


    for (i = 0; i < 4; ++i)
    {
        do { (w[i]) = ((uint32)((key + 4*i)[0] & 0xff)<<24) | ((uint32)((key + 4*i)[1] & 0xff)<<16) | ((uint32)((key + 4*i)[2] & 0xff)<<8) | ((uint32)((key + 4*i)[3] & 0xff));} while(0);
    }

    for (i = 0; i < 10; ++i)
    {
        w[4] = w[0] ^ (((S_Box[(((w[3]) >> (8 * (2))) & 0xff)] << 24) & 0xff000000) ^ ((S_Box[(((w[3]) >> (8 * (1))) & 0xff)] << 16) & 0xff0000) ^ ((S_Box[(((w[3]) >> (8 * (0))) & 0xff)] << 8) & 0xff00) ^ (S_Box[(((w[3]) >> (8 * (3))) & 0xff)] & 0xff)) ^ rcon[i];
        w[5] = w[1] ^ w[4];
        w[6] = w[2] ^ w[5];
        w[7] = w[3] ^ w[6];
        w += 4;
    }
}


static inline void addRoundKey(uint8 (*state)[4], const uint32 *key)
{
    uint8 k[4][4];
    uint8 i, j;

    for (i = 0; i < 4; ++i)
    {
        for (j = 0; j < 4; ++j)
        {
            k[i][j] = (uint8) (((key[j]) >> (8 * (3 - i))) & 0xff);
            state[i][j] ^= k[i][j];
        }
    }
}


static inline void subBytes(uint8 (*state)[4])
{
    uint8 i ,j;

    for (i = 0; i < 4; ++i)
    {
        for (j = 0; j < 4; ++j)
        {
            state[i][j] = S_Box[state[i][j]];
        }
    }
}


static inline void shiftRows(uint8 (*state)[4])
{
    uint32 block[4] = {0};
    uint8 i;

    for (i = 0; i < 4; ++i)
    {
        do { (block[i]) = ((uint32)((state[i])[0] & 0xff)<<24) | ((uint32)((state[i])[1] & 0xff)<<16) | ((uint32)((state[i])[2] & 0xff)<<8) | ((uint32)((state[i])[3] & 0xff));} while(0);
        block[i] = (((block[i]) << (8*i)) | ((block[i]) >> (32-(8*i))));
        do { (state[i])[0] = (uint8)(((block[i])>>24) & 0xff); (state[i])[1] = (uint8)(((block[i])>>16) & 0xff); (state[i])[2] = (uint8)(((block[i])>>8) & 0xff); (state[i])[3] = (uint8)((block[i]) & 0xff); } while(0);
    }
}


static inline uint8 GMul(uint8 u, uint8 v)
{
    uint8 p = 0;
    uint8 i;

    for (i = 0; i < 8; ++i)
    {
        if (u & 0x01)
        {
            p ^= v;
        }

        uint8 flag = (v & 0x80);
        v <<= 1;
        if (flag)
        {
            v ^= 0x1B;
        }

        u >>= 1;
    }

    return p;
}


static inline uint8 mixColumns(uint8 (*state)[4])
{
    uint8 i, j;
    uint8 tmp[4][4];
    uint8 M[4][4] = {{0x02, 0x03, 0x01, 0x01},
                     {0x01, 0x02, 0x03, 0x01},
                     {0x01, 0x01, 0x02, 0x03},
                     {0x03, 0x01, 0x01, 0x02}};


    for (i = 0; i < 4; ++i)
    {
        for (j = 0; j < 4; ++j)
        {
            tmp[i][j] = state[i][j];
        }
    }

    for (i = 0; i < 4; ++i)
    {
        for (j = 0; j < 4; ++j)
        {
            state[i][j] = GMul(M[i][0], tmp[0][j]) ^ GMul(M[i][1], tmp[1][j])
                        ^ GMul(M[i][2], tmp[2][j]) ^ GMul(M[i][3], tmp[3][j]);
        }
    }

    return 0;
}
# 256 "bswcdd\\AES128_CMAC\\AES128_CMAC.c"
static void AES128Encrypt(const uint8 *key, uint32 keyLen, const uint8 *pt, uint8 *ct)
{
    uint8 *pos = ct;
    const uint32 *rk = &u32EncryptArray[0];
    uint8 state[4][4] = {0};
    uint8 i, j;

    keyExpansion(key, 16);


    for (i = 0; i < 16; i += 16)
    {
        loadStateArray(state, pt);
        addRoundKey(state, rk);

        for (j = 1; j < 10; ++j)
        {
            rk += 4;
            subBytes(state);
            shiftRows(state);
            mixColumns(state);
            addRoundKey(state, rk);
        }

        subBytes(state);
        shiftRows(state);
        addRoundKey(state, rk+4);

        storeStateArray(state, pos);

        pos += 16;
        pt += 16;
        rk = &u32EncryptArray[0];
    }
}


static inline void generate_subkeys(const uint8* key, uint8* k1, uint8* k2)
{
    uint8 l[16] = {0};
    uint8 const_Rb[16] = {0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                            0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x87};
    uint8 i;

    AES128Encrypt(key, 16, l, l);

    uint8 msb = (l[0] & 0x80) ? 1 : 0;
    for (i = 0; i < 15; i++)
    {
        k1[i] = (l[i] << 1) | ((l[i + 1] & 0x80) ? 1 : 0);
    }
    k1[15] = l[15] << 1;
    if (msb)
    {
        for (i = 0; i < 16; i++)
        {
            k1[i] ^= const_Rb[i];
        }
    }

    msb = (k1[0] & 0x80) ? 1 : 0;
    for (i = 0; i < 15; i++)
    {
        k2[i] = (k1[i] << 1) | ((k1[i + 1] & 0x80) ? 1 : 0);
    }
    k2[15] = k1[15] << 1;
    if (msb)
    {
        for (i = 0; i < 16; i++)
        {
            k2[i] ^= const_Rb[i];
        }
    }
}
# 346 "bswcdd\\AES128_CMAC\\AES128_CMAC.c"
void AES128CMAC_vidEncrypt(const uint8* key, const uint8* message, uint8 message_len, uint8* cmac_value)
{
    uint8 k1[16], k2[16];
    uint8 x[16] = {0};
    uint8 y[16] = {0};
    uint8 u8LocCalLen;
    uint8 last_block_len;
    uint8 i;
    uint8 j;
    uint8 u8LocIndex;

    generate_subkeys(key, k1, k2);

    u8LocCalLen = (uint8)((message_len + 15) / 16) - 1;
    last_block_len = (uint8)(message_len % 16);

    for (i = 0; i < u8LocCalLen; i++)
    {
        for (j = 0; j < 16; j++)
        {
            u8LocIndex = i * 16 + j;
            y[j] = x[j] ^ message[u8LocIndex];
        }
        AES128Encrypt(key, 16, y, x);
    }

    if (last_block_len == 0)
    {
        for (j = 0; j < 16; j++)
        {
            u8LocIndex = u8LocCalLen * 16 + j;
            y[j] = x[j] ^ message[u8LocIndex] ^ k1[j];
        }
    }
    else
    {
        for (j = 0; j < last_block_len; j++)
        {
            u8LocIndex = u8LocCalLen * 16 + j;
            y[j] = x[j] ^ message[u8LocIndex];
        }

        y[last_block_len] = x[last_block_len] ^ 0x80;

        for (j = last_block_len + 1; j < 16; j++)
        {
            y[j] = x[j];
        }

        for (j = 0; j < 16; j++)
        {
            y[j] ^= k2[j];
        }
    }

    AES128Encrypt(key, 16, y, cmac_value);
}
