#ifndef __SHA256_H_
#define __SHA256_H_

/*********************************************************************************************************************
* Includes
*********************************************************************************************************************/

#include "Std_Types.h"

/*********************************************************************************************************************
* Local Defines
*********************************************************************************************************************/

/*********************************************************************************************************************
* Local Macros
*********************************************************************************************************************/

/*********************************************************************************************************************
* Local Types
*********************************************************************************************************************/

/*********************************************************************************************************************
* Local Variables
*********************************************************************************************************************/

/*********************************************************************************************************************
* Local Functions Prototypes
*********************************************************************************************************************/

/*********************************************************************************************************************
* Local Functions Implementation
*********************************************************************************************************************/

/*********************************************************************************************************************
* Exported Functions Implementation
*********************************************************************************************************************/
/*********************************************************************************************************
*
* !FuncName    : SHA256
* !Description : Calculate memory stored data for check memory rounite
* !Brief       : SHA256 hash algorithm 
* !Time        : November 22 2024
**********************************************************************************************************
* !LastAuthor  : GYT
**********************************************************************************************************/

typedef uint32       usize;

#define SHA224_DIGEST_SIZE ( 224 / 8)
#define SHA256_DIGEST_SIZE ( 256 / 8)
#define SHA384_DIGEST_SIZE ( 384 / 8)
#define SHA512_DIGEST_SIZE ( 512 / 8)

#define SHA256_BLOCK_SIZE  ( 512 / 8)
#define SHA512_BLOCK_SIZE  (1024 / 8)
#define SHA384_BLOCK_SIZE  SHA512_BLOCK_SIZE
#define SHA224_BLOCK_SIZE  SHA256_BLOCK_SIZE


#ifdef __cplusplus
extern "C" {
#endif

typedef struct {
    uint32 tot_len;
    uint32 len;
    uint8 block[2 * SHA256_BLOCK_SIZE];
    uint32 h[8];
} sha256_ctx;

typedef struct {
    uint32 tot_len;
    uint32 len;
    uint8 block[2 * SHA512_BLOCK_SIZE];
    uint64 h[8];
} sha512_ctx;

typedef sha512_ctx sha384_ctx;
typedef sha256_ctx sha224_ctx;

extern void sha224_init(sha224_ctx *ctx);
extern void sha224_update(sha224_ctx *ctx, const uint8 *message,
                   uint32 len);
extern void sha224_final(sha224_ctx *ctx, uint8 *digest);
extern void sha224(const uint8 *message, uint32 len,
            uint8 *digest);

extern void sha256_init(sha256_ctx * ctx);
extern void sha256_update(sha256_ctx *ctx, const uint8 *message,
                   uint32 len);
extern void sha256_final(sha256_ctx *ctx, uint8 *digest);
extern void sha256(const uint8 *message, uint32 len,
            uint8 *digest);

extern void sha384_init(sha384_ctx *ctx);
extern void sha384_update(sha384_ctx *ctx, const uint8 *message,
                   uint32 len);
extern void sha384_final(sha384_ctx *ctx, uint8 *digest);
extern void sha384(const uint8 *message, uint32 len,
            uint8 *digest);

extern void sha512_init(sha512_ctx *ctx);
extern void sha512_update(sha512_ctx *ctx, const uint8 *message,
                   uint32 len);
extern void sha512_final(sha512_ctx *ctx, uint8 *digest);
extern void sha512(const uint8 *message, uint32 len,
            uint8 *digest);

#ifdef __cplusplus
}
#endif

#endif /* __SHA256_H_ */
/* -----------------------------------------------END OF FILE----------------------------------------------------- */
