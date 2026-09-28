/*
 * @Description:  This module is mainly used to handle the sharing of DID data content between the APP and the BOOT.
 * @Author: Wx
 * @Date: 2026-06-15 11:28:02
 * @LastEditTime: 2026-06-15 13:04:13
 * @LastEditors: Wx
 * @FilePath: \TE5X\src\bswcdd\BSW\AB_DID_Shared_Deal\AB_DID_Shared.c
 */
#include "AB_DID_Shared.h"
#include "FBL_DataMPrvCfg.h"
#include "UDS_DidDataDef.h"
/******************************************************************************/
/* GLOBAL FUNCTION DEFINITION                                                 */
/******************************************************************************/
#define BSW_START_SEC_CODE
#include "BSW_MemMap.h"

typedef struct 
{
    uint8 *pSrc;   // Data Source
    uint8 *pDst;   // Data Dest
    uint8 sizes;   // Data Sizes(1Byte)
} Did_Data_Updata_Def ;

Did_Data_Updata_Def Did_Data_Updata[] = 
{
    {&UDS_au8DidBuf_0xF18A[0],&UDS_au8WrDidTableNvM_Ram.tBuf.au8DidBuf_0xF18A[0],UDS_DID_BUF_SIZE_0xF18A},
    {&UDS_au8DidBuf_0xF197[0],&UDS_au8WrDidTableNvM_Ram.tBuf.au8DidBuf_0xF197[0],UDS_DID_BUF_SIZE_0xF197},
    {&UDS_au8DidBuf_0xF187[0],&UDS_au8WrDidTableNvM_Ram.tBuf.au8DidBuf_0xF187[0],UDS_DID_BUF_SIZE_0xF187},
    {&UDS_au8DidBuf_0xF188[0],&UDS_au8WrDidTableNvM_Ram.tBuf.au8DidBuf_0xF188[0],UDS_DID_BUF_SIZE_0xF188},
    {&UDS_au8DidBuf_0xF191[0],&UDS_au8WrDidTableNvM_Ram.tBuf.au8DidBuf_0xF191[0],UDS_DID_BUF_SIZE_0xF191},
    {&UDS_au8DidBuf_0xF193[0],&UDS_au8WrDidTableNvM_Ram.tBuf.au8DidBuf_0xF193[0],UDS_DID_BUF_SIZE_0xF193},
    {&UDS_au8DidBuf_0xF189[0],&UDS_au8WrDidTableNvM_Ram.tBuf.au8DidBuf_0xF189[0],UDS_DID_BUF_SIZE_0xF189},
    {&UDS_au8DidBuf_0xF190[0],&UDS_au8WrDidTableNvM_Ram.tBuf.au8DidBuf_0xF190[0],UDS_DID_BUF_SIZE_0xF190},
    {&UDS_au8DidBuf_0xB303[0],&UDS_au8WrDidTableNvM_Ram.tBuf.au8DidBuf_0xB303[0],UDS_DID_BUF_SIZE_0xB303},
    {&UDS_au8DidBuf_0xF18C[0],&UDS_au8WrDidTableNvM_Ram.tBuf.au8DidBuf_0xF18C[0],UDS_DID_BUF_SIZE_0xF18C},
} ;

static boolean AB_bNVMDataPowerOnUpdata( void )
{
    uint8 i = 0u;
    uint8 j = 0u;
    uint8 Nums = 0u ;
    boolean Ret = FALSE ;

    Nums = sizeof(Did_Data_Updata) / sizeof(Did_Data_Updata_Def) ;

    for( i = 0u ; i < Nums ; i ++ )
    {
        if( (Did_Data_Updata[i].pDst != NULL_PTR) && (Did_Data_Updata[i].pSrc != NULL_PTR) )
        { 
            for (j = 0u; j < Did_Data_Updata[i].sizes; j++)
            {
                if ( Ret == FALSE )
                {
                    if (Did_Data_Updata[i].pDst[j] != Did_Data_Updata[i].pSrc[j])
                    {
                        Ret = TRUE ;
                    }
                }
                Did_Data_Updata[i].pDst[j] = Did_Data_Updata[i].pSrc[j] ;
            }
        }
        else
        {
            break;
        }
    }
    return Ret ;
}

/**
 * @FuncName: AB_APP_VidUpdataToBOOT
 * @Description:  Update the data of the APP to BOOT
 * @Author: Wx
 * @Date: 2026-06-15 13:29:16
 * @LastEditTime: 
 */
static void AB_APP_VidUpdataToBOOT( void )
{
   uint8 u8Index;
   boolean bDidUpdated = FALSE;

   bDidUpdated = AB_bNVMDataPowerOnUpdata() ;

   if(TRUE == bDidUpdated)
   {
      NvM_SetRamBlockStatus(NvMConf_NvMBlockDescriptor_NvM_UDS_au8WrDidTable, TRUE);
      /*
            After setting the RAM block to TRUE, you need to call NvM_WriteBlock; 
            otherwise, the data cannot be stored.
            Date:2026-6-15 Wx
      */
      NvM_WriteBlock(NvMConf_NvMBlockDescriptor_NvM_UDS_au8WrDidTable, NULL_PTR);
   }
}

static void AB_BOOT_VidUpdataToAPP( void )
{
    /* NULL */
}

/**
 * @FuncName: AB_vidSharedDidInitFunc
 * @Description:  Initialize the APP to share DID data with BOOT
 * @Author: Wx
 * @Date: 2026-06-15 13:21:06
 * @LastEditTime: 
 */
void AB_vidSharedDidInitFunc(void)
{
    AB_APP_VidUpdataToBOOT() ;
}

#define BSW_STOP_SEC_CODE
#include "BSW_MemMap.h"

/*-------------------------------- end of file -------------------------------*/
