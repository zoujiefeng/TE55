/**********************************************************************************************************************/
/* !Layer           : HAL                                                                                             */
/* !Component       : TLF35584                                                                                        */
/* !Description     : TLF35584 safe supply device management                                                          */
/*                                                                                                                    */
/* !File            : TLF35584.h                                                                                      */
/* !Description     : Header file for TLF35584 component                                                              */
/*                                                                                                                    */
/* !Reference       :                                                                                                 */
/*                                                                                                                    */
/* Coding language  : C                                                                                               */
/*                                                                                                                    */
/* COPYRIGHT invt  all rights reserved                                                                                */
/**********************************************************************************************************************/
/* Dimension Informations
 * %PCMS_HEADER_SUBSTITUTION_START:%
 * The PID has this format: <Product ID>:<Item ID>.<Variant>-<Item Type>;<Revision>
 * %PID:%
 * %PCMS_HEADER_SUBSTITUTION_END:%
 **********************************************************************************************************************/

#ifndef TLF35584_H
#define TLF35584_H

#include "Std_Types.h"

/**********************************************************************************************************************/
/* DEFINES                                                                                                            */
/**********************************************************************************************************************/
#define TLF35584_u8REG_DEVCFG0            0x00
#define TLF35584_u8REG_DEVCFG1            0x01
#define TLF35584_u8REG_DEVCFG2            0x02
#define TLF35584_u8REG_PROTCFG            0x03
#define TLF35584_u8REG_SYSPCFG0           0x04
#define TLF35584_u8REG_SYSPCFG1           0x05
#define TLF35584_u8REG_WDCFG0             0x06
#define TLF35584_u8REG_WDCFG1             0x07
#define TLF35584_u8REG_FWDCFG             0x08
#define TLF35584_u8REG_WWDCFG0            0x09
#define TLF35584_u8REG_WWDCFG1            0x0A
#define TLF35584_u8REG_RSYSPCFG0          0x0B
#define TLF35584_u8REG_RSYSPCFG1          0x0C
#define TLF35584_u8REG_RWDCFG0            0x0D
#define TLF35584_u8REG_RWDCFG1            0x0E
#define TLF35584_u8REG_RFWDCFG            0x0F
#define TLF35584_u8REG_RWWDCFG0           0x10
#define TLF35584_u8REG_RWWDCFG1           0x11
#define TLF35584_u8REG_WKTIMCFG0          0x12
#define TLF35584_u8REG_WKTIMCFG1          0x13
#define TLF35584_u8REG_WKTIMCFG2          0x14
#define TLF35584_u8REG_DEVCTRL            0x15
#define TLF35584_u8REG_DEVCTRLN           0x16
#define TLF35584_u8REG_WWDSCMD            0x17
#define TLF35584_u8REG_FWDRSP             0x18
#define TLF35584_u8REG_FWDRSPSYNC         0x19
#define TLF35584_u8REG_SYSFAIL            0x1A
#define TLF35584_u8REG_INITERR            0x1B
#define TLF35584_u8REG_IF                 0x1C
#define TLF35584_u8REG_SYSSF              0x1D
#define TLF35584_u8REG_WKSF               0x1E
#define TLF35584_u8REG_SPISF              0x1F
#define TLF35584_u8REG_MONSF0             0x20
#define TLF35584_u8REG_MONSF1             0x21
#define TLF35584_u8REG_MONSF2             0x22
#define TLF35584_u8REG_MONSF3             0x23
#define TLF35584_u8REG_OTFAIL             0x24
#define TLF35584_u8REG_OTWRNSF            0x25
#define TLF35584_u8REG_VMONSTAT           0x26
#define TLF35584_u8REG_DEVSTAT            0x27
#define TLF35584_u8REG_PROTSTAT           0x28
#define TLF35584_u8REG_WWDSTAT            0x29
#define TLF35584_u8REG_FWDSTAT0           0x2A
#define TLF35584_u8REG_FWDSTAT1           0x2B
#define TLF35584_u8REG_ABIST_CTRL0        0x2C
#define TLF35584_u8REG_ABIST_CTRL1        0x2D
#define TLF35584_u8REG_ABIST_SELECT0      0x2E
#define TLF35584_u8REG_ABIST_SELECT1      0x2F
#define TLF35584_u8REG_ABIST_SELECT2      0x30
#define TLF35584_u8REG_GTM                0x3F
#define TLF35584_u8REG_BCK_FREQ_CHANGE    0x31
#define TLF35584_u8REG_BCK_FRE_SPREAD     0x32
#define TLF35584_u8REG_BCK_MAIN_CTRL      0x33

#define TLF35584_u8CFGINDEX_RSYSPCFG0     0u
#define TLF35584_u8CFGINDEX_RSYSPCFG1     1u
#define TLF35584_u8CFGINDEX_RWDCFG0       2u
#define TLF35584_u8CFGINDEX_RWDCFG1       3u
#define TLF35584_u8CFGINDEX_RFWDCFG       4u
#define TLF35584_u8CFGINDEX_RWWDCFG0      5u
#define TLF35584_u8CFGINDEX_RWWDCFG1      6u
#define TLF35584_u8CFGINDEX_WKTIMCFG0     7u
#define TLF35584_u8CFGINDEX_WKTIMCFG1     10u
#define TLF35584_u8CFGINDEX_WKTIMCFG2     11u
#define TLF35584_u8CFGINDEX_DEVCTRL       8u
#define TLF35584_u8CFGINDEX_DEVCTRLN      9u


#define TLF35584_u8STSINDEX_SYSFAIL       0u
#define TLF35584_u8STSINDEX_INITERR       1u
#define TLF35584_u8STSINDEX_IF            2u
#define TLF35584_u8STSINDEX_SYSSF         3u
#define TLF35584_u8STSINDEX_WKSF          4u
#define TLF35584_u8STSINDEX_SPISF         5u
#define TLF35584_u8STSINDEX_MONSF0        6u
#define TLF35584_u8STSINDEX_MONSF1        7u
#define TLF35584_u8STSINDEX_MONSF2        8u
#define TLF35584_u8STSINDEX_MONSF3        9u
#define TLF35584_u8STSINDEX_OTFAIL        10u
#define TLF35584_u8STSINDEX_OTWRNSF       11u
#define TLF35584_u8STSINDEX_VMONSTAT      12u
#define TLF35584_u8STSINDEX_DEVSTAT       13u
#define TLF35584_u8STSINDEX_PROTSTAT      14u
#define TLF35584_u8STSINDEX_WWDSTAT       15u
#define TLF35584_u8STSINDEX_FWDSTAT0      16u
#define TLF35584_u8STSINDEX_FWDSTAT1      17u

#define TLF35584_u8CHIP_STEP_A            00u
#define TLF35584_u8CHIP_STEP_B            01u
#define TLF35584_u8DATA_TRANS_READ        00u
#define TLF35584_u8DATA_TRANS_WRITE       01u

#define TLF35584_u8FRAME_NB_BEFORE_TEMPO  16u
#define TLF35584_u8FRAME_NB_INIT_STEP_A   11u
#define TLF35584_u8FRAME_NB_INIT_STEP_B   12u
#define TLF35584_u8TX_FRAME_MAX_NB        30u

#define TLF35584_u16UNLOCK_FRAME1         0xAB
#define TLF35584_u16UNLOCK_FRAME2         0xEF
#define TLF35584_u16UNLOCK_FRAME3         0x56
#define TLF35584_u16UNLOCK_FRAME4         0x12
#define TLF35584_u16DISABLE_WATCHDOGS     0x93
#define TLF35584_u16ENABLE_WATCHDOGS      0x99 /* 0x98 WDCYC: 0.1ms */ /* 0x99 WDCYC: 1ms  */
#define TLF35584_u16TIME_WINDOWS_MIN      0x00
#define TLF35584_u16STEP_A_DISA_ERR_MON   0x08
#define TLF35584_u16STEP_B_DISA_ERR_MON   0x00
#define TLF35584_u16LOCK_FRAME1           0xDF
#define TLF35584_u16LOCK_FRAME2           0x34
#define TLF35584_u16LOCK_FRAME3           0xBE
#define TLF35584_u16LOCK_FRAME4           0xCA
#define TLF35584_u16STEP_A_CFG_NORMAL     0xEA
#define TLF35584_u16STEP_B_CFG1_NORMAL    0xEA
#define TLF35584_u16STEP_B_CFG2_NORMAL    0x15
#define TLF35584_u16STEP_B_CFG1_STDY      0xEC
#define TLF35584_u16STEP_B_CFG2_STDY      0x13

#if 0
#define TLF35584_u16UNLOCK_FRAME1         0x8756u //1 000011 1010 1011 0 r3 = 0xAB
#define TLF35584_u16UNLOCK_FRAME2         0x87DEu //1 000011 1110 1111 0 r3 = 0xEF
#define TLF35584_u16UNLOCK_FRAME3         0x86ADu //1 000011 0101 0110 1 r3 = 0x56
#define TLF35584_u16UNLOCK_FRAME4         0x8625u //1 000011 0001 0010 1 r3 = 0x12
#define TLF35584_u16DISABLE_WATCHDOGS     0x8D27u //1 000110 1001 0011 1 r6 = 0x93
#define TLF35584_u16ENABLE_WATCHDOGS      0x8D33u //1 000110 1001 1001 1 r6 = 0x99
#define TLF35584_u16TIME_WINDOWS_MIN      0x9401u //1 001010 0000 0000 1 r2 = 0x00
#define TLF35584_u16STEP_A_DISA_ERR_MON   0x8811u //1 000100 0000 1000 1 r4 = 0x08
#define TLF35584_u16STEP_B_DISA_ERR_MON   0x8A01u //1 000101 0000 0000 1 r5 = 0x00
#define TLF35584_u16LOCK_FRAME1           0x87BEu //1 000011 1101 1111 0 r3 = 0xDF
#define TLF35584_u16LOCK_FRAME2           0x8668u //1 000011 0011 0100 0 r3 = 0x34
#define TLF35584_u16LOCK_FRAME3           0x877Du //1 000011 1011 1110 1 r3 = 0xBE
#define TLF35584_u16LOCK_FRAME4           0x8795u //1 000011 1100 1010 1 r3 = 0xCA
#define TLF35584_u16STEP_A_CFG_NORMAL     0x9DD5u //1 001110 1110 1010 1 re = 0xEA
#define TLF35584_u16STEP_B_CFG1_NORMAL    0xABD5u //1 010101 1110 1010 1 r15 = 0xEA
#define TLF35584_u16STEP_B_CFG2_NORMAL    0xAC2Bu //1 010110 0001 0101 1 r16 = 0x15
#define TLF35584_u16STEP_B_CFG1_STDY      0xABD9u //1 010101 1110 1100 1 r15 = 0xEC
#define TLF35584_u16STEP_B_CFG2_STDY      0xAC27u //1 010110 0001 0011 1 r16 = 0x13
#endif

/**********************************************************************************************************************/
/* DATA DECLARATION                                                                                                   */
/**********************************************************************************************************************/

#define TLF35584_START_SEC_VAR_CLEARED_8BIT
#include "TLF35584_MemMap.h"

extern uint8 TLF35584_u8ChipStepUsed;
extern uint8 TLF35584_u8ErrorFrameCnt;
extern uint8 TLF35584_u8IndexFrame;
extern uint8 TLF35584_u8SpiTxFrameMaxNb;
extern uint8 TLF35584_u8SpiTxNmBeforeTempo;
extern uint8 TLF35584_u8DataTransferType;
extern boolean TLF35584_bSpiComError;
extern boolean TLF35584_bDataTransfering;
extern boolean TLF35584_bReadDone;
extern boolean TLF35584_bWriteDone;
extern boolean TLF35584_bInitDone;

#define TLF35584_STOP_SEC_VAR_CLEARED_8BIT
#include "TLF35584_MemMap.h"


#define TLF35584_START_SEC_VAR_CLEARED_16BIT
#include "TLF35584_MemMap.h"

extern uint16 TLF35584_au16SpiTxFrame[TLF35584_u8TX_FRAME_MAX_NB];
extern uint16 TLF35584_au16SpiTxCfgAddr[TLF35584_u8TX_FRAME_MAX_NB];
extern uint16 TLF35584_au16SpiTxCfgData[TLF35584_u8TX_FRAME_MAX_NB];
extern uint16 TLF35584_au16SpiRxCfgData[TLF35584_u8TX_FRAME_MAX_NB];

#define TLF35584_STOP_SEC_VAR_CLEARED_16BIT
#include "TLF35584_MemMap.h"


/**********************************************************************************************************************/
/* FUNCTIONS DECLARATION                                                                                              */
/**********************************************************************************************************************/

#define TLF35584_START_SEC_CODE
#include "TLF35584_MemMap.h"

extern void TLF35584_vidInit(uint8 u8TLF35584_StepUsed);
extern void TLF35584_vidResetActive(void);
extern void TLF35584_vidSpiEndNotification(void);
extern boolean TLF35584_bManagement(void);
extern void TLF35584_vidEntrStdysts(uint8 u8TLF35584_StepUsed);
extern void TLF35584_vidReadMultiReg(uint16 * pu16Regaddr, uint16 * pu16RxBuffer, uint8 u8RegNum);
extern void TLF35584_vidReadMultiRegGetData(uint16 * pu16Buffer, uint8 u8RegNum);
extern void TLF35584_vidWriteMultiReg(uint16 * pu16Regaddr, uint16 * pu16Regdata, uint16 * pu16RxBuffer,uint8 u8RegNum);
uint16 TLF35584_u16CalReadRegFrame(uint16 u16regaddr);
uint16 TLF35584_u16CalWriteRegFrame(uint16 u16regaddr, uint16 u16regdata);
uint16 TLF35584_u16ExtractRxFrameData(uint16 u16framevalue);
uint16 TLF35584_u16CalParity(uint16 u16InputData);

#define TLF35584_STOP_SEC_CODE
#include "TLF35584_MemMap.h"

#endif /* TLF35584_H */

/*--------------------------------------------------- END OF FILE ----------------------------------------------------*/