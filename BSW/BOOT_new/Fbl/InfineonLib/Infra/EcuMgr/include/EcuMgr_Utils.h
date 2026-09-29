
#ifndef     ECUMGR_UTILS_H
#define     ECUMGR_UTILS_H

/*******************************************************************************
**                      Includes
*******************************************************************************/
#include "Std_Types.h"

/*******************************************************************************
**                      Global Macro Definitions                              **
*******************************************************************************/
#define B(x) str_to_binary_(#x)
#define SET_BIT(var, bit)                     {(var) |= (uint8)(bit) ;} 
#define CLEAR_BIT(var, bit)                   {(var) &= (uint8)(~(bit));}
#define IS_BIT_SET(var, bit)                  ((((var) & (bit))!=0u) ? TRUE:FALSE)
/*******************************************************************************
**                      Global Type Definitions                               **
*******************************************************************************/
#define ECUMGR_UTIL_LEN_OF_YYMMDD_FORMAT       (3)
#define ECUMGR_UTIL_LEN_OF_YYYYMMDD_FORMAT     (4)

/*******************************************************************************
**                      Global Constant Declarations                          **
*******************************************************************************/

/*******************************************************************************
**                      Global Variable Declarations                          **
*******************************************************************************/

/*******************************************************************************
**                      Global Function Declarations                          **
*******************************************************************************/
extern Std_ReturnType EcuMgr_Util_IsDateFormatValid(const uint8* date, uint8 len);
extern Std_ReturnType EcuMgr_DIDService_StoreFingerPrintInfor(const uint8* data);
extern Std_ReturnType EcuMgr_DIDService_WriteFingerPrintInfor(uint32 blockID);
extern Std_ReturnType EcuMgr_DIDService_ReadFingerPrintInfor(uint8* data);
/*******************************************************************************
**                      Global Inline Function Definitions                    **
*******************************************************************************/
LOCAL_INLINE unsigned long long str_to_binary_(const char *s)
{
  unsigned long long i = 0u;
  while (*s)
  {
    i <<= 1;
    i += *s++ - '0';
  }
  return i;
}
#endif

