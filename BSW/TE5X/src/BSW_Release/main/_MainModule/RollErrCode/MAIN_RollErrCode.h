#ifndef __MAIN_ROLL_ERR_CODE_H_
#define __MAIN_ROLL_ERR_CODE_H_

/*******************************************************************************
 ****  Imported Project Header Files
 ******************************************************************************/
#include "Std_Types.h"

/*******************************************************************************
 ****  Private Type Definitions
 ******************************************************************************/
typedef enum{
    eMAIN_REC_BUF_IDX_MCU1 = 0,
    eMAIN_REC_BUF_IDX_MCU2,
    eMAIN_REC_BUF_IDX_ACM,
    eMAIN_REC_BUF_IDX_EPS,
    eMAIN_REC_BUF_IDX_PDU,
    eMAIN_REC_BUF_NUM
}MAIN_REC_BUF_INDEX;

/*******************************************************************************
 ****  Exported Function Declarations
 ******************************************************************************/
/******************************************************************************
*  
* !FuncName    : MAIN_REC_vidClrErrCode  
* !Description : Clear error code.
*
******************************************************************************
* !LastAuthor  : ZYX
******************************************************************************/
extern void MAIN_REC_vidClrErrCode(const uint8 ku8BufNum);

/******************************************************************************
*  
* !FuncName    : MAIN_REC_vidSetErrCode  
* !Description : Set MCU error code, for Tx signal of CAN.
*
******************************************************************************
* !LastAuthor  : ZYX
******************************************************************************/
extern void MAIN_REC_vidSetErrCode(const uint8 ku8BufNum, const uint8 u8ErrCod);

/******************************************************************************
*  
* !FuncName    : MAIN_REC_u8RdErrCode  
* !Description : Read MCU error code for CAN Tx signal.
*
******************************************************************************
* !LastAuthor  : ZYX
******************************************************************************/
extern uint8 MAIN_REC_u8RdErrCode(const uint8 ku8BufNum);

#endif /* __MAIN_ROLL_ERR_CODE_H_ */
