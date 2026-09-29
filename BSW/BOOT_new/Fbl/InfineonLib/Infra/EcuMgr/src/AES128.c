/* *****************************************************************************
 * BEGIN: Banner
 *-----------------------------------------------------------------------------
 *                                 ETAS GmbH
 *                      D-70469 Stuttgart, Borsigstr. 14
 *-----------------------------------------------------------------------------
 *    Administrative Information (automatically filled in by ISOLAR)
 *-----------------------------------------------------------------------------
 * Project :    ETAS Entry Platfrom
 * Component:  ASW_DCM
 * Description: Testcode for ASW_DCM
 * Version         Author:       Date               Update information
 * 1.0             HAD1HC        7-Nov-2018         Create software
 * 1.1             AGT1HC        19-Nov-2021        Update the Banner
 * 1.2             HAD1HC        04-Mar-2021        Update functions for new
 * 													DIAG requirements
 * 1.3             HAD1HC        13-Apr-2021        Update Memmap
 * 1.4             XHA3SGH       06-Aug-2021        Conifgure seed for warning removed
 *-----------------------------------------------------------------------------
 * END: Banner
 ******************************************************************************/

#include "Std_Types.h"
#include "rte_Type.h"
#include "rte.h"
#include "Dcm_Lcfg_DspUds.h"
#include "IfxStm_reg.h"
#include "UDS_NvM.h"

#define AES_BLOCK_SIZE      16U
#define AES128_KEY_SIZE     16U
#define UDS27_DATA_SIZE     16U

static void MemCopy(uint8 *dest, const uint8 *src, uint32 len);
static uint8 MemCompare(const uint8 *buf1, const uint8 *buf2, uint32 len);
static void AES_SubBytes(uint8 *state);
static void AES_ShiftRows(uint8 *state);
static uint8 AES_GfMultBy2(uint8 x);
static void AES_MixColumns(uint8 *state);
static void AES_AddRoundKey(uint8 *state, const uint8 *roundKey);
static void AES_KeyExpansion(const uint8 *key, uint8 *roundKeys);
static void AES128_ECB_Encrypt(const uint8 *key, const uint8 *in, uint8 *out);
static void AES128_CBC_Encrypt(const uint8 *key, const uint8 *iv, const uint8 *in, uint8 *out);

static const uint8 AES_SBOX[256] = 
{
    0x63,0x7C,0x77,0x7B,0xF2,0x6B,0x6F,0xC5,0x30,0x01,0x67,0x2B,0xFE,0xD7,0xAB,0x76,
    0xCA,0x82,0xC9,0x7D,0xFA,0x59,0x47,0xF0,0xAD,0xD4,0xA2,0xAF,0x9C,0xA4,0x72,0xC0,
    0xB7,0xFD,0x93,0x26,0x36,0x3F,0xF7,0xCC,0x34,0xA5,0xE5,0xF1,0x71,0xD8,0x31,0x15,
    0x04,0xC7,0x23,0xC3,0x18,0x96,0x05,0x9A,0x07,0x12,0x80,0xE2,0xEB,0x27,0xB2,0x75,
    0x09,0x83,0x2C,0x1A,0x1B,0x6E,0x5A,0xA0,0x52,0x3B,0xD6,0xB3,0x29,0xE3,0x2F,0x84,
    0x53,0xD1,0x00,0xED,0x20,0xFC,0xB1,0x5B,0x6A,0xCB,0xBE,0x39,0x4A,0x4C,0x58,0xCF,
    0xD0,0xEF,0xAA,0xFB,0x43,0x4D,0x33,0x85,0x45,0xF9,0x02,0x7F,0x50,0x3C,0x9F,0xA8,
    0x51,0xA3,0x40,0x8F,0x92,0x9D,0x38,0xF5,0xBC,0xB6,0xDA,0x21,0x10,0xFF,0xF3,0xD2,
    0xCD,0x0C,0x13,0xEC,0x5F,0x97,0x44,0x17,0xC4,0xA7,0x7E,0x3D,0x64,0x5D,0x19,0x73,
    0x60,0x81,0x4F,0xDC,0x22,0x2A,0x90,0x88,0x46,0xEE,0xB8,0x14,0xDE,0x5E,0x0B,0xDB,
    0xE0,0x32,0x3A,0x0A,0x49,0x06,0x24,0x5C,0xC2,0xD3,0xAC,0x62,0x91,0x95,0xE4,0x79,
    0xE7,0xC8,0x37,0x6D,0x8D,0xD5,0x4E,0xA9,0x6C,0x56,0xF4,0xEA,0x65,0x7A,0xAE,0x08,
    0xBA,0x78,0x25,0x2E,0x1C,0xA6,0xB4,0xC6,0xE8,0xDD,0x74,0x1F,0x4B,0xBD,0x8B,0x8A,
    0x70,0x3E,0xB5,0x66,0x48,0x03,0xF6,0x0E,0x61,0x35,0x57,0xB9,0x86,0xC1,0x1D,0x9E,
    0xE1,0xF8,0x98,0x11,0x69,0xD9,0x8E,0x94,0x9B,0x1E,0x87,0xE9,0xCE,0x55,0x28,0xDF,
    0x8C,0xA1,0x89,0x0D,0xBF,0xE6,0x42,0x68,0x41,0x99,0x2D,0x0F,0xB0,0x54,0xBB,0x16
};


static const uint8 AES_RCON[11] = 
{
    0x00,0x01,0x02,0x04,0x08,0x10,0x20,0x40,0x80,0x1B,0x36
};


static void MemCopy(uint8 *dest, const uint8 *src, uint32 len)
{
    uint32 i;
    for(i = 0; i < len; i++)
    {
        *(dest + i) = *(src + i);
    }
}


static uint8 MemCompare(const uint8 *buf1, const uint8 *buf2, uint32 len)
{
    uint32 i;
    uint8 ret = 0;
    for(i = 0; i < len; i++)
    {
        if(*(buf1 + i) != *(buf2 + i))
        {
            ret = 1U;
            break;
        }
        else
        {
            ret = 0U;
        }
    }
    return ret;
}

// 字节替换
static void AES_SubBytes(uint8 *state)
{
    uint8 i;
    for (i = 0; i < AES_BLOCK_SIZE; i++)
    {
        *(state + i) = AES_SBOX[*(state + i)];
    }
}

// 行移位
static void AES_ShiftRows(uint8 *state)
{
    uint8 t;
    // 第1行左移1
    t = state[1]; 
    state[1] = state[5]; 
    state[5] = state[9]; 
    state[9] = state[13]; 
    state[13] = t;
    // 第2行左移2
    t = state[2]; 
    state[2] = state[10]; 
    state[10] = t;
    t = state[6]; 
    state[6] = state[14]; 
    state[14] = t;
    // 第3行左移3
    t = state[3]; 
    state[3] = state[15]; 
    state[15] = state[11]; 
    state[11] = state[7]; 
    state[7] = t;
}

static uint8 AES_GfMultBy2(uint8 x)
{
    return (x << 1) ^ ((x >> 7) ? 0x1B : 0x00);
}


static void AES_MixColumns(uint8 *state)
{
    uint8 i,a,b,c,d;
    for(i=0;i<16;i+=4)
    {
        a = state[i]; b = state[i+1]; c = state[i+2]; d = state[i+3];
        state[i]   = AES_GfMultBy2(a^b) ^ b ^ c ^ d;
        state[i+1] = AES_GfMultBy2(b^c) ^ c ^ d ^ a;
        state[i+2] = AES_GfMultBy2(c^d) ^ d ^ a ^ b;
        state[i+3] = AES_GfMultBy2(d^a) ^ a ^ b ^ c;
    }
}


static void AES_AddRoundKey(uint8 *state, const uint8 *roundKey)
{
    uint8 i;
    for (i = 0; i < AES_BLOCK_SIZE; i++)
    {
        state[i] ^= roundKey[i];
    }
}


static void AES_KeyExpansion(const uint8 *key, uint8 *roundKeys)
{
    uint8 i,j;
    uint8 temp[4];
    MemCopy(roundKeys, key, AES128_KEY_SIZE);

    for(i = 16;i < 176;i += 4)
    {
        MemCopy(temp, &roundKeys[i - 4], 4);
        if((i % 16) == 0)
        {
            uint8 t = temp[0];
            temp[0] = temp[1]; 
            temp[1] = temp[2];
            temp[2] = temp[3];
            temp[3] = t;
            for(j=0; j < 4; j++)
            {
               temp[j] = AES_SBOX[temp[j]];
            }
            temp[0] ^= AES_RCON[i/16];
        }
        for(j=0; j < 4; j++)
        {
            roundKeys[i + j] = roundKeys[i + j - 16] ^ temp[j];
        }
    }
}


static void AES128_ECB_Encrypt(const uint8 *key, const uint8 *in, uint8 *out)
{
    uint8 state[AES_BLOCK_SIZE];
    uint8 roundKeys[176];
    uint8 round;

    MemCopy(state, in, AES_BLOCK_SIZE);
    AES_KeyExpansion(key, roundKeys);
    AES_AddRoundKey(state, roundKeys);

    for(round=1;round<=9;round++)
    {
        AES_SubBytes(state);
        AES_ShiftRows(state);
        AES_MixColumns(state);
        AES_AddRoundKey(state, roundKeys + round*16);
    }

    AES_SubBytes(state);
    AES_ShiftRows(state);
    AES_AddRoundKey(state, roundKeys + 10*16);

    MemCopy(out, state, AES_BLOCK_SIZE);
}


// 标准AES128-CBC 单分组（适配UDS27 16字节种子）
static void AES128_CBC_Encrypt(const uint8 *key, const uint8 *iv, const uint8 *in, uint8 *out)
{
    uint8 buf[AES_BLOCK_SIZE];
    uint8 i;
    // CBC：明文异或IV
    for(i=0;i<16;i++)
    {
      buf[i] = in[i] ^ iv[i];
    } 

    AES128_ECB_Encrypt(key, buf, out);
}


void UDS27_CalcUnlockKey(const uint8 *seed, const uint8 *key, uint8 *result)
{
    const uint8 uds_iv[16] = {0x05, 0x05, 0x05, 0x05, 0x05, 0x05, 0x05, 0x05, 0x05, 0x05, 0x05, 0x05, 0x05, 0x05, 0x05, 0x05};
    AES128_CBC_Encrypt(key, uds_iv, seed, result);
}

uint8 UDS27_CheckKey(const uint8 *calc_key, const uint8 *tester_key)
{
    return (MemCompare(calc_key, tester_key, UDS27_DATA_SIZE) == 0U) ? 1U : 0U;
}

/* ==================== CMAC 子密钥生成 ==================== */
#define CONST_RB 0x87

/* 左移一位（128-bit big-endian） */
static void left_shift_one(const uint8 *input, uint8 *output)
{
    uint8 i, carry = 0;
    for (i = 16; i > 0; i--) {
        uint8 idx = i - 1;
        output[idx] = (input[idx] << 1) | carry;
        carry = (input[idx] & 0x80) ? 1 : 0;
    }
}

/* 生成 CMAC 子密钥 K1 和 K2 */
static void aes128_cmac_subkeys(const uint8 *key, uint8 *k1, uint8 *k2)
{
    uint8 L[16] = {0};
    uint8 temp[16];
    uint8 i;

    /* L = AES_ECB(key, 0x00...00) */
    AES128_ECB_Encrypt(key, L, L);   /* 注意：输入和输出可同为 L */

    /* 计算 K1 */
    left_shift_one(L, temp);
    if (L[0] & 0x80) {
        temp[15] ^= CONST_RB;
    }
    MemCopy(k1, temp, 16);

    /* 计算 K2 */
    left_shift_one(k1, temp);
    if (k1[0] & 0x80) {
        temp[15] ^= CONST_RB;
    }
    MemCopy(k2, temp, 16);
}

/* ==================== CMAC 主函数 ==================== */
/**
 * @brief 计算 AES-128-CMAC
 * @param key       16字节密钥
 * @param msg       消息数据
 * @param msg_len   消息长度（字节，0~255）
 * @param mac       输出的16字节CMAC值
 */
void AES128_CMAC(const uint8 *key, const uint8 *msg, uint8 msg_len, uint8 *mac)
{

    uint8 k1[16], k2[16];
    uint8 X[16] = {0};
    uint8 Y[16];
    uint8 last[16];
    uint8 n = msg_len / 16;     // 完整块数
    uint8 r = msg_len % 16;
    uint8 i, j;

    aes128_cmac_subkeys(key, k1, k2);

    // 处理前 n-1 个完整块（关键修正）
    for (i = 0; i < (n > 0 ? n - 1 : 0); i++) {
        for (j = 0; j < 16; j++) {
            Y[j] = X[j] ^ msg[i * 16 + j];
        }
        AES128_ECB_Encrypt(key, Y, X);
    }

    // 构造最后一个块
    if (r == 0 && msg_len > 0) {
        // 最后一个块完整：使用 K1
        for (j = 0; j < 16; j++) {
            last[j] = msg[(n - 1) * 16 + j] ^ k1[j];
        }
    } else {
        // 最后一个块不完整（包括空消息）
        for (j = 0; j < r; j++) {
            last[j] = msg[n * 16 + j];
        }
        last[r] = 0x80;
        for (j = r + 1; j < 16; j++) {
            last[j] = 0x00;
        }
        for (j = 0; j < 16; j++) {
            last[j] ^= k2[j];
        }
    }

    // 最终异或并加密
    for (j = 0; j < 16; j++) {
        Y[j] = X[j] ^ last[j];
    }
    AES128_ECB_Encrypt(key, Y, mac);
}
#define ASW_DCM_STOP_SEC_CODE


