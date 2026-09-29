/*********************************************************************************************************************
*
* Description:     EcuM module implementation 
* FileName:        AES128_CFB.c
* Company:         invt GmbH (www.invt.com)
*
**********************************************************************************************************************
*
* COPYRIGHT RESERVED, Copyright invt GmbH 2019. All rights reserved, also regarding any disposal,
* exploitation, reproduction, editing, distribution, as well as in the event of applications
* for industrial property rights.
*
**********************************************************************************************************************
* History:
**********************************************************************************************************************
* Author        Date            Comment
**********************************************************************************************************************
UCN1HC          10/18/2020
**********************************************************************************************************************/
/*********************************************************************************************************************
* Includes
*********************************************************************************************************************/
#include "AES128_ECB.h"
#include "AES128_CFB.h"

/*********************************************************************************************************************
* Local Defines
*********************************************************************************************************************/
/* Uint8 array convert to uint32 word array */
#define GET_ULONG_LE(n,b,i)                             \
{                                                       \
    (n) = ( (uint32) (b)[(i)    ]       )        \
        | ( (uint32) (b)[(i) + 1] <<  8 )        \
        | ( (uint32) (b)[(i) + 2] << 16 )        \
        | ( (uint32) (b)[(i) + 3] << 24 );       \
}

/************************************************************************************
/* TYPE DEFINES                                                                     *
/************************************************************************************/

/************************************************************************************
 * Const Variable                                                                   *
 ************************************************************************************/
/* AES128 round constant */
static const uint32 RCON[] = {
   0x00000001, 0x00000002, 0x00000004, 0x00000008,
   0x00000010, 0x00000020, 0x00000040, 0x00000080,
   0x0000001B, 0x00000036 /* for 128-bit blocks, Rijndael never uses more than 10 RCON values */
};
/* AES128 static box for Byte substitution */
static const uint8 Sbox[256] = {
	// populate the Sbox matrix
	  /* 0     1     2     3     4     5     6     7     8     9     a     b     c     d     e     f */
 /*0*/  0x63, 0x7c, 0x77, 0x7b, 0xf2, 0x6b, 0x6f, 0xc5, 0x30, 0x01, 0x67, 0x2b, 0xfe, 0xd7, 0xab, 0x76,
 /*1*/  0xca, 0x82, 0xc9, 0x7d, 0xfa, 0x59, 0x47, 0xf0, 0xad, 0xd4, 0xa2, 0xaf, 0x9c, 0xa4, 0x72, 0xc0,
 /*2*/  0xb7, 0xfd, 0x93, 0x26, 0x36, 0x3f, 0xf7, 0xcc, 0x34, 0xa5, 0xe5, 0xf1, 0x71, 0xd8, 0x31, 0x15,
 /*3*/  0x04, 0xc7, 0x23, 0xc3, 0x18, 0x96, 0x05, 0x9a, 0x07, 0x12, 0x80, 0xe2, 0xeb, 0x27, 0xb2, 0x75,
 /*4*/  0x09, 0x83, 0x2c, 0x1a, 0x1b, 0x6e, 0x5a, 0xa0, 0x52, 0x3b, 0xd6, 0xb3, 0x29, 0xe3, 0x2f, 0x84,
 /*5*/  0x53, 0xd1, 0x00, 0xed, 0x20, 0xfc, 0xb1, 0x5b, 0x6a, 0xcb, 0xbe, 0x39, 0x4a, 0x4c, 0x58, 0xcf,
 /*6*/  0xd0, 0xef, 0xaa, 0xfb, 0x43, 0x4d, 0x33, 0x85, 0x45, 0xf9, 0x02, 0x7f, 0x50, 0x3c, 0x9f, 0xa8,
 /*7*/  0x51, 0xa3, 0x40, 0x8f, 0x92, 0x9d, 0x38, 0xf5, 0xbc, 0xb6, 0xda, 0x21, 0x10, 0xff, 0xf3, 0xd2,
 /*8*/  0xcd, 0x0c, 0x13, 0xec, 0x5f, 0x97, 0x44, 0x17, 0xc4, 0xa7, 0x7e, 0x3d, 0x64, 0x5d, 0x19, 0x73,
 /*9*/  0x60, 0x81, 0x4f, 0xdc, 0x22, 0x2a, 0x90, 0x88, 0x46, 0xee, 0xb8, 0x14, 0xde, 0x5e, 0x0b, 0xdb,
 /*a*/  0xe0, 0x32, 0x3a, 0x0a, 0x49, 0x06, 0x24, 0x5c, 0xc2, 0xd3, 0xac, 0x62, 0x91, 0x95, 0xe4, 0x79,
 /*b*/  0xe7, 0xc8, 0x37, 0x6d, 0x8d, 0xd5, 0x4e, 0xa9, 0x6c, 0x56, 0xf4, 0xea, 0x65, 0x7a, 0xae, 0x08,
 /*c*/  0xba, 0x78, 0x25, 0x2e, 0x1c, 0xa6, 0xb4, 0xc6, 0xe8, 0xdd, 0x74, 0x1f, 0x4b, 0xbd, 0x8b, 0x8a,
 /*d*/  0x70, 0x3e, 0xb5, 0x66, 0x48, 0x03, 0xf6, 0x0e, 0x61, 0x35, 0x57, 0xb9, 0x86, 0xc1, 0x1d, 0x9e,
 /*e*/  0xe1, 0xf8, 0x98, 0x11, 0x69, 0xd9, 0x8e, 0x94, 0x9b, 0x1e, 0x87, 0xe9, 0xce, 0x55, 0x28, 0xdf,
 /*f*/  0x8c, 0xa1, 0x89, 0x0d, 0xbf, 0xe6, 0x42, 0x68, 0x41, 0x99, 0x2d, 0x0f, 0xb0, 0x54, 0xbb, 0x16
};

/*********************************************************************************************************************
* Local Macros
*********************************************************************************************************************/

/*********************************************************************************************************************
* Local Types
*********************************************************************************************************************/

/*********************************************************************************************************************
* Exported Functions Implementation
*********************************************************************************************************************/
/****************************************************************************************************
*
* !FuncName    : AES128CFB_vidEncrypt
* !Description : AES128 CFB mode encrypt the seed 
* !Brief       : Just compare cipher text temporary not need to decrypt
* !Time        : November 04 2024
*****************************************************************************************************
* !LastAuthor  : GYT
*****************************************************************************************************/
void AES128CFB_vidEncrypt(uint8 *u8Seed, 
                              uint8 *u8Key_L, 
                              uint8 *u8IV_L, 
                              uint8 *u8KeyCipher)
{
   uint8 u8LocIdx;
   uint8 u8ArraySize = 0;
   uint8 u8Temp = 0; 
   uint32 u32RoundKey[44] = {0};

   /* Initial rount key matrix */
    for (u8LocIdx = 0; u8LocIdx < 4; u8LocIdx++)
    {
        GET_ULONG_LE(u32RoundKey[u8LocIdx], u8Key_L, u8LocIdx << 2);
    }
   /* Extend keys */
   for(u8LocIdx = 0; u8LocIdx < 10; u8LocIdx++)
   {
      u8ArraySize = 4*u8LocIdx;
      u32RoundKey[4 + u8ArraySize] = u32RoundKey[0 + u8ArraySize] ^ RCON[u8LocIdx] ^ 
                       ((uint32)Sbox[(u32RoundKey[3 + u8ArraySize] >> 8) & 0xFF]) ^
                       ((uint32)Sbox[(u32RoundKey[3 + u8ArraySize] >> 16) & 0xFF] << 8) ^
                       ((uint32)Sbox[(u32RoundKey[3 + u8ArraySize] >> 24) & 0xFF] << 16) ^
                       ((uint32)Sbox[(u32RoundKey[3 + u8ArraySize]) & 0xFF] << 24);
      
      u32RoundKey[5 + u8ArraySize] = u32RoundKey[1 + u8ArraySize] ^ u32RoundKey[4 + u8ArraySize];
      u32RoundKey[6 + u8ArraySize] = u32RoundKey[2 + u8ArraySize] ^ u32RoundKey[5 + u8ArraySize];
      u32RoundKey[7 + u8ArraySize] = u32RoundKey[3 + u8ArraySize] ^ u32RoundKey[6 + u8ArraySize];
   }
   /* Round encryption */ 
   u8LocIdx = 0;
   for(u8ArraySize = 0; u8ArraySize < 4; u8ArraySize++)
   {
      if(u8LocIdx == 0)
      {
         AES128ECB_vidEncrypt(&u32RoundKey[0], u8IV_L, u8IV_L);
      }
      u8KeyCipher[u8ArraySize] = (uint8)(u8IV_L[u8ArraySize] ^ u8Seed[u8ArraySize]);
      u8IV_L[u8LocIdx] = u8KeyCipher[u8ArraySize]; 
      u8LocIdx = (u8LocIdx + 1) & 0x0F;
   }
}

/*-------------------------------- end of file -------------------------------*/
