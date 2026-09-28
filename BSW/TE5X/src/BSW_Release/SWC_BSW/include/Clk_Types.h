/*******************************************************************************
**                                                                            **
** Copyright (C) Hitex (UK) Ltd. (2020)                                       **
**                                                                            **
** All rights reserved.                                                       **
**                                                                            **
** This source code and any compilation or derivative thereof is the sole     **
** property of Hitex (UK) Ltd. and is provided pursuant to a Software         **
** License  Agreement. This code is the proprietary information of            **
** Hitex (UK) Ltd. and is confidential in nature. Its use and dissemination   **
** by any other party other than Hitex (UK) Ltd. is strictly limited by the   **
** confidential information provisions of the Agreement referenced above.     **
**                                                                            **
********************************************************************************
**                                                                            **
** FILENAME : Clk_Types.h                                                     **
**                                                                            **
** REVISION : \$Revision: 29886 $                                             **
**                                                                            **
** DATE : \$LastChangedDate:: 2021-08-03 #$                                   **
**                                                                            **
** PLATFORM : AURIX 2G (TC3XX)                                                **
**                                                                            **
** AUTHOR : AURIX-SW-Dev                                                      **
**                                                                            **
** VENDOR : Hitex (UK) Ltd.                                                   **
**                                                                            **
** DESCRIPTION : <brief description>                                          **
**                                                                            **
** SPECIFICATION(S) : <spec name, version>                                    **
**                                                                            **
** MAY BE CHANGED BY USER : Yes                                               **
**                                                                            **
*******************************************************************************/

#ifndef CLK_TYPES_H
#define CLK_TYPES_H

/*******************************************************************************
 ****  Imported Standard Header Files
 ******************************************************************************/
#include "Std_Types.h"     /* E_OK, E_NOT_OK, include "Platform_Types.h" */

#include "Ifx_Cfg.h"       /* defines IFX_CFG_SCU_XTAL_FREQUENCY, IFX_CFG_SCU_PLL_FREQUENCY...  */
#include "IfxScu_reg.h"    /* SFR SCU CCU Register */
#include "IfxSmu_reg.h"    /* SFR SMU_KEYS*/
#include "IfxStm_reg.h"    /* Access to STM0 current tick value TIM0 */

/*******************************************************************************
 ****  Imported Project Header Files
 ******************************************************************************/
#include "Clk_Cfg.h"       /* Import default clock settings */
#include "McalLib.h"

/*******************************************************************************
 ****  Exported Type Definitions
 ******************************************************************************/
/* A2G System PLL Registers :*/
/**************************************/
/* A2G System PLL Register SYSPLLSTAT */
/**************************************/
typedef enum Clk_SysPllStat_PwdStatStateType_e
{
    /* SYSPLLSTAT PWDSTAT states (=System PLL Power-saving Mode Status) */
    CLK_SYSPLLSTAT_PWDSTAT_POWER_SAVING_OFF =  ( 0x0U ),  /* System PLL Power-saving Mode was not entered */
    CLK_SYSPLLSTAT_PWDSTAT_POWER_SAVING_ON  =  ( 0x1U )   /* System PLL Power-saving Mode was entered */
} Clk_SysPllStat_PwdStatStateType;

typedef enum Clk_SysPllStat_LockStateType_e
{
    /* SYSPLLSTAT LOCK states (=System PLL Lock Status) */
    CLK_SYSPLLSTAT_LOCK_FREQ_IS_UNSTABLE  =  ( 0x0U ),  /* The frequency of the System PLL is not stable
                                                           and does not enable system operation */
    CLK_SYSPLLSTAT_LOCK_FREQ_IS_STABLE    =  ( 0x1U )   /* The frequency of the System PLL is stable and
                                                           enables system operation */
} Clk_SysPllStat_LockStateType;

typedef enum Clk_SysPllStat_K2RdyStateType_e
{
    /* SYSPLLSTAT K2RDY states (= K2 Divider Ready Status) */
    CLK_SYSPLLSTAT_K2RDY_OLD_VALUE  =  ( 0x0U ),  /* K2-Divider does not yet operate with the new value */
    CLK_SYSPLLSTAT_K2RDY_NEW_VALUE  =  ( 0x1U )   /* K2-Divider operating with the new value */
} Clk_SysPllStat_K2RdyStateType;

typedef enum Clk_SysPllStat_ModRunStateType_e
{
    /* SYSPLLSTAT MODRUN states (= Modulation run) */
    CLK_SYSPLLSTAT_MODRUN_NOT_ACTIVATED  =  ( 0x0U ),  /* Frequency modulation is not active */
    CLK_SYSPLLSTAT_MODRUN_ACTIVATED      =  ( 0x1U )   /* Frequency modulation is active */
} Clk_SysPllStat_ModRunStateType;

typedef enum Clk_SysPllStat_StateType_e
{
    /* SYSPLLSTAT states */
    CLK_SYSPLLSTAT_RESET_VALUE       =  ( 0x00000002U ),  /* System Reset value */
    CLK_SYSPLLSTAT_NORMAL_OPERATION  =  ( 0x00000000U )   /* Normal operation value */
} Clk_SysPllStat_StateType;

/**************************************/
/* A2G System PLL Register SYSPLLCON0 */
/**************************************/
typedef enum Clk_SysPllCon0_StateType_e
{
    /* SYSPLLCON0 typical values */
    CLK_SYSPLLCON0_RESET_VALUE       =  ( 0x40003A00U ),  /* System Reset value */
    CLK_SYSPLLCON0_NORMAL_OPERATION  =  ( 0x00000000U )   /* Normal operation value */
} Clk_SysPllCon0_StateType;

typedef enum Clk_SysPllCon0_ModEnStateType_e
{
    /* SYSPLLCON0 MODEN states (=Modulation Enable)
     * This bit controls the activation of the frequency modulation of the System PLL.*/
    CLK_SYSPLLCON0_MODEN_FREQ_MOD_OFF =  ( 0x0U ),  /* Frequency modulation is not activated */
    CLK_SYSPLLCON0_MODEN_FREQ_MOD_ON  =  ( 0x1U )   /* Frequency modulation is activated */
} Clk_SysPllCon0_ModEnStateType;

typedef enum Clk_SysPllCon0_NDivValueType_e
{
    /* SYSPLLCON0 NDIV states (=N-Divider Value)
     * The value the N-Divider operates with is NDIV+1. */
    CLK_SYSPLLCON0_NDIV_N1 =  ( 0x0U ),  /* N-Divider = NDIV +1 = 1 */
    CLK_SYSPLLCON0_NDIV_N2,          /* N-Divider = NDIV +1 = 2 */
    CLK_SYSPLLCON0_NDIV_N3,          /**< \brief  N-divider 3  */
    CLK_SYSPLLCON0_NDIV_N4,          /**< \brief  N-divider 4  */
    CLK_SYSPLLCON0_NDIV_N5,          /**< \brief  N-divider 5  */
    CLK_SYSPLLCON0_NDIV_N6,          /**< \brief  N-divider 6  */
    CLK_SYSPLLCON0_NDIV_N7,          /**< \brief  N-divider 7  */
    CLK_SYSPLLCON0_NDIV_N8,          /**< \brief  N-divider 8  */
    CLK_SYSPLLCON0_NDIV_N9,          /**< \brief  N-divider 9  */
    CLK_SYSPLLCON0_NDIV_N10,         /**< \brief  N-divider 10  */
    CLK_SYSPLLCON0_NDIV_N11,         /**< \brief  N-divider 11  */
    CLK_SYSPLLCON0_NDIV_N12,         /**< \brief  N-divider 12  */
    CLK_SYSPLLCON0_NDIV_N13,         /**< \brief  N-divider 13  */
    CLK_SYSPLLCON0_NDIV_N14,         /**< \brief  N-divider 14  */
    CLK_SYSPLLCON0_NDIV_N15,         /**< \brief  N-divider 15  */
    CLK_SYSPLLCON0_NDIV_N16,         /**< \brief  N-divider 16  */
    CLK_SYSPLLCON0_NDIV_N17,         /**< \brief  N-divider 17  */
    CLK_SYSPLLCON0_NDIV_N18,         /**< \brief  N-divider 18  */
    CLK_SYSPLLCON0_NDIV_N19,         /**< \brief  N-divider 19  */
    CLK_SYSPLLCON0_NDIV_N20,         /**< \brief  N-divider 20  */
    CLK_SYSPLLCON0_NDIV_N21,         /**< \brief  N-divider 21  */
    CLK_SYSPLLCON0_NDIV_N22,         /**< \brief  N-divider 22  */
    CLK_SYSPLLCON0_NDIV_N23,         /**< \brief  N-divider 23  */
    CLK_SYSPLLCON0_NDIV_N24,         /**< \brief  N-divider 24  */
    CLK_SYSPLLCON0_NDIV_N25,         /**< \brief  N-divider 25  */
    CLK_SYSPLLCON0_NDIV_N26,         /**< \brief  N-divider 26  */
    CLK_SYSPLLCON0_NDIV_N27,         /**< \brief  N-divider 27  */
    CLK_SYSPLLCON0_NDIV_N28,         /**< \brief  N-divider 28  */
    CLK_SYSPLLCON0_NDIV_N29,         /**< \brief  N-divider 29  */
    CLK_SYSPLLCON0_NDIV_N30,         /**< \brief  N-divider 30  */
    CLK_SYSPLLCON0_NDIV_N31,         /**< \brief  N-divider 31  */
    CLK_SYSPLLCON0_NDIV_N32,         /**< \brief  N-divider 32  */
    CLK_SYSPLLCON0_NDIV_N33,         /**< \brief  N-divider 33  */
    CLK_SYSPLLCON0_NDIV_N34,         /**< \brief  N-divider 34  */
    CLK_SYSPLLCON0_NDIV_N35,         /**< \brief  N-divider 35  */
    CLK_SYSPLLCON0_NDIV_N36,         /**< \brief  N-divider 36  */
    CLK_SYSPLLCON0_NDIV_N37,         /**< \brief  N-divider 37  */
    CLK_SYSPLLCON0_NDIV_N38,         /**< \brief  N-divider 38  */
    CLK_SYSPLLCON0_NDIV_N39,         /**< \brief  N-divider 39  */
    CLK_SYSPLLCON0_NDIV_N40,         /**< \brief  N-divider 40  */
    CLK_SYSPLLCON0_NDIV_N41,         /**< \brief  N-divider 41  */
    CLK_SYSPLLCON0_NDIV_N42,         /**< \brief  N-divider 42  */
    CLK_SYSPLLCON0_NDIV_N43,         /**< \brief  N-divider 43  */
    CLK_SYSPLLCON0_NDIV_N44,         /**< \brief  N-divider 44  */
    CLK_SYSPLLCON0_NDIV_N45,         /**< \brief  N-divider 45  */
    CLK_SYSPLLCON0_NDIV_N46,         /**< \brief  N-divider 46  */
    CLK_SYSPLLCON0_NDIV_N47,         /**< \brief  N-divider 47  */
    CLK_SYSPLLCON0_NDIV_N48,         /**< \brief  N-divider 48  */
    CLK_SYSPLLCON0_NDIV_N49,         /**< \brief  N-divider 49  */
    CLK_SYSPLLCON0_NDIV_N50,         /**< \brief  N-divider 50  */
    CLK_SYSPLLCON0_NDIV_N51,         /**< \brief  N-divider 51  */
    CLK_SYSPLLCON0_NDIV_N52,         /**< \brief  N-divider 52  */
    CLK_SYSPLLCON0_NDIV_N53,         /**< \brief  N-divider 53  */
    CLK_SYSPLLCON0_NDIV_N54,         /**< \brief  N-divider 54  */
    CLK_SYSPLLCON0_NDIV_N55,         /**< \brief  N-divider 55  */
    CLK_SYSPLLCON0_NDIV_N56,         /**< \brief  N-divider 56  */
    CLK_SYSPLLCON0_NDIV_N57,         /**< \brief  N-divider 57  */
    CLK_SYSPLLCON0_NDIV_N58,         /**< \brief  N-divider 58  */
    CLK_SYSPLLCON0_NDIV_N59,         /**< \brief  N-divider 59  */
    CLK_SYSPLLCON0_NDIV_N60,         /**< \brief  N-divider 60  */
    CLK_SYSPLLCON0_NDIV_N61,         /**< \brief  N-divider 61  */
    CLK_SYSPLLCON0_NDIV_N62,         /**< \brief  N-divider 62  */
    CLK_SYSPLLCON0_NDIV_N63,         /**< \brief  N-divider 63  */
    CLK_SYSPLLCON0_NDIV_N64,         /**< \brief  N-divider 64  */
    CLK_SYSPLLCON0_NDIV_N65,         /**< \brief  N-divider 65  */
    CLK_SYSPLLCON0_NDIV_N66,         /**< \brief  N-divider 66  */
    CLK_SYSPLLCON0_NDIV_N67,         /**< \brief  N-divider 67  */
    CLK_SYSPLLCON0_NDIV_N68,         /**< \brief  N-divider 68  */
    CLK_SYSPLLCON0_NDIV_N69,         /**< \brief  N-divider 69  */
    CLK_SYSPLLCON0_NDIV_N70,         /**< \brief  N-divider 70  */
    CLK_SYSPLLCON0_NDIV_N71,         /**< \brief  N-divider 71  */
    CLK_SYSPLLCON0_NDIV_N72,         /**< \brief  N-divider 72  */
    CLK_SYSPLLCON0_NDIV_N73,         /**< \brief  N-divider 73  */
    CLK_SYSPLLCON0_NDIV_N74,         /**< \brief  N-divider 74  */
    CLK_SYSPLLCON0_NDIV_N75,         /**< \brief  N-divider 75  */
    CLK_SYSPLLCON0_NDIV_N76,         /**< \brief  N-divider 76  */
    CLK_SYSPLLCON0_NDIV_N77,         /**< \brief  N-divider 77  */
    CLK_SYSPLLCON0_NDIV_N78,         /**< \brief  N-divider 78  */
    CLK_SYSPLLCON0_NDIV_N79,         /**< \brief  N-divider 79  */
    CLK_SYSPLLCON0_NDIV_N80,         /**< \brief  N-divider 80  */
    CLK_SYSPLLCON0_NDIV_N81,         /**< \brief  N-divider 81  */
    CLK_SYSPLLCON0_NDIV_N82,         /**< \brief  N-divider 82  */
    CLK_SYSPLLCON0_NDIV_N83,         /**< \brief  N-divider 83  */
    CLK_SYSPLLCON0_NDIV_N84,         /**< \brief  N-divider 84  */
    CLK_SYSPLLCON0_NDIV_N85,         /**< \brief  N-divider 85  */
    CLK_SYSPLLCON0_NDIV_N86,         /**< \brief  N-divider 86  */
    CLK_SYSPLLCON0_NDIV_N87,         /**< \brief  N-divider 87  */
    CLK_SYSPLLCON0_NDIV_N88,         /**< \brief  N-divider 88  */
    CLK_SYSPLLCON0_NDIV_N89,         /**< \brief  N-divider 89  */
    CLK_SYSPLLCON0_NDIV_N90,         /**< \brief  N-divider 90  */
    CLK_SYSPLLCON0_NDIV_N91,         /**< \brief  N-divider 91  */
    CLK_SYSPLLCON0_NDIV_N92,         /**< \brief  N-divider 92  */
    CLK_SYSPLLCON0_NDIV_N93,         /**< \brief  N-divider 93  */
    CLK_SYSPLLCON0_NDIV_N94,         /**< \brief  N-divider 94  */
    CLK_SYSPLLCON0_NDIV_N95,         /**< \brief  N-divider 95  */
    CLK_SYSPLLCON0_NDIV_N96,         /**< \brief  N-divider 96  */
    CLK_SYSPLLCON0_NDIV_N97,         /**< \brief  N-divider 97  */
    CLK_SYSPLLCON0_NDIV_N98,         /**< \brief  N-divider 98  */
    CLK_SYSPLLCON0_NDIV_N99,         /**< \brief  N-divider 99  */
    CLK_SYSPLLCON0_NDIV_N100,        /**< \brief  N-divider 100  */
    CLK_SYSPLLCON0_NDIV_N101,        /**< \brief  N-divider 101  */
    CLK_SYSPLLCON0_NDIV_N102,        /**< \brief  N-divider 102  */
    CLK_SYSPLLCON0_NDIV_N103,        /**< \brief  N-divider 103  */
    CLK_SYSPLLCON0_NDIV_N104,        /**< \brief  N-divider 104  */
    CLK_SYSPLLCON0_NDIV_N105,        /**< \brief  N-divider 105  */
    CLK_SYSPLLCON0_NDIV_N106,        /**< \brief  N-divider 106  */
    CLK_SYSPLLCON0_NDIV_N107,        /**< \brief  N-divider 107  */
    CLK_SYSPLLCON0_NDIV_N108,        /**< \brief  N-divider 108  */
    CLK_SYSPLLCON0_NDIV_N109,        /**< \brief  N-divider 109  */
    CLK_SYSPLLCON0_NDIV_N110,        /**< \brief  N-divider 110  */
    CLK_SYSPLLCON0_NDIV_N111,        /**< \brief  N-divider 111  */
    CLK_SYSPLLCON0_NDIV_N112,        /**< \brief  N-divider 112  */
    CLK_SYSPLLCON0_NDIV_N113,        /**< \brief  N-divider 113  */
    CLK_SYSPLLCON0_NDIV_N114,        /**< \brief  N-divider 114  */
    CLK_SYSPLLCON0_NDIV_N115,        /**< \brief  N-divider 115  */
    CLK_SYSPLLCON0_NDIV_N116,        /**< \brief  N-divider 116  */
    CLK_SYSPLLCON0_NDIV_N117,        /**< \brief  N-divider 117  */
    CLK_SYSPLLCON0_NDIV_N118,        /**< \brief  N-divider 118  */
    CLK_SYSPLLCON0_NDIV_N119,        /**< \brief  N-divider 119  */
    CLK_SYSPLLCON0_NDIV_N120,        /**< \brief  N-divider 120  */
    CLK_SYSPLLCON0_NDIV_N121,        /**< \brief  N-divider 121  */
    CLK_SYSPLLCON0_NDIV_N122,        /**< \brief  N-divider 122  */
    CLK_SYSPLLCON0_NDIV_N123,        /**< \brief  N-divider 123  */
    CLK_SYSPLLCON0_NDIV_N124,        /**< \brief  N-divider 124  */
    CLK_SYSPLLCON0_NDIV_N125,        /**< \brief  N-divider 125  */
    CLK_SYSPLLCON0_NDIV_N126,        /**< \brief  N-divider 126  */
    CLK_SYSPLLCON0_NDIV_N127,        /**< \brief  N-divider 127  */
    CLK_SYSPLLCON0_NDIV_N128         /**< \brief  N-divider 128  */
} Clk_SysPllCon0_NDivValueType;

typedef enum Clk_SysPllCon0_PllPwdStateType_e
{
    /* SYSPLLCON0 MODEN states (=System PLL Power Saving Mode State) */
    CLK_SYSPLLCON0_PLLPWD_POWER_SAVING_ON    =  ( 0x0U ),  /* The complete System PLL block is put into a Power Saving Mode and can no longer be used. */
    CLK_SYSPLLCON0_PLLPWD_POWER_SAVING_OFF   =  ( 0x1U )   /* Normal behavior */
} Clk_SysPllCon0_PllPwdStateType;

typedef enum Clk_SysPllCon0_ResLDStateType_e
{
    /* SYSPLLCON0 RESLD states (=Restart DCO Lock Detection)
     * Setting this bit will clear bit SYSPLLSTAT.LOCK and restart the DCO lock detection.
     * Note: Reading this bit returns always a zero.*/
    CLK_SYSPLLCON0_RESLD_DEFAULT_READ_VALUE    =  ( 0x0U ),  /* Reading this bit returns always a zero. */
    CLK_SYSPLLCON0_RESLD_RESTART_DCO_LOCK_DET  =  ( 0x1U )   /* clear bit SYSPLLSTAT.LOCK and restart the DCO lock detection */
} Clk_SysPllCon0_ResLDStateType;

typedef enum Clk_SysPllCon0_PDivValueType_e
{
    /* SYSPLLCON0 PDIV states (=P-Divider Value)
     * This bit controls the activation of the frequency modulation of the System PLL.*/
    CLK_SYSPLLCON0_PDIV_P1 =  ( 0x0U ),   /* P-Divider = PDIV +1 = 1 */
    CLK_SYSPLLCON0_PDIV_P2,   /* P-Divider = PDIV +1 = 2 */
    CLK_SYSPLLCON0_PDIV_P3,   /* P-Divider = PDIV +1 = 3 */
    CLK_SYSPLLCON0_PDIV_P4,   /* P-Divider = PDIV +1 = 4 */
    CLK_SYSPLLCON0_PDIV_P5,   /* P-Divider = PDIV +1 = 5 */
    CLK_SYSPLLCON0_PDIV_P6,   /* P-Divider = PDIV +1 = 6 */
    CLK_SYSPLLCON0_PDIV_P7    /* P-Divider = PDIV +1 = 7 */
} Clk_SysPllCon0_PDivValueType;

typedef enum Clk_SysPllCon0_InSelStateType_e
{
    /* SYSPLLCON0 INSEL value (=Input Selection)
     * This bit field defines as clock source for the two PLLs (SystemPLL and Peripheral PLL) */
    CLK_SYSPLLCON0_INSEL_CLKSOURCE_FBACK     =  ( 0x0U ),    /* Back-up clock is used as clock source */
    CLK_SYSPLLCON0_INSEL_CLKSOURCE_FOSC0     =  ( 0x1U ),    /* fOSC0 is used as clock source */
    CLK_SYSPLLCON0_INSEL_CLKSOURCE_SYSCLK    =  ( 0x2U ),    /* SYSCLK pin is used as clock source */
    CLK_SYSPLLCON0_INSEL_CLKSOURCE_RESERVED  =  ( 0x3U )     /* Reserved, do not use this combination */
} Clk_SysPllCon0_InSelStateType;

/**************************************/
/* A2G System PLL Register SYSPLLCON1 */
/**************************************/
typedef enum Clk_SysPllCon1_StateType_e
{
    /* SYSPLLCON1 typical values */
    CLK_SYSPLLCON1_RESET_VALUE       =  ( 0x00000005U ),  /* System Reset value */
    CLK_SYSPLLCON1_NORMAL_OPERATION  =  ( 0x00000000U )   /* Normal operation value */
} Clk_SysPllCon1_StateType;

typedef enum Clk_SysPllCon1_K2DivValueType_e
{
    /* SYSPLLCON1 K2DIV value (=K2-Divider Value)
     * The value the K2-Divider operates with is K2DIV+1. While SYSPLLSTAT.K2RDY = 0, K2DIV is locked. */
    CLK_SYSPLLCON1_K2DIV_K1 =  ( 0x0U ),
    CLK_SYSPLLCON1_K2DIV_K2,
    CLK_SYSPLLCON1_K2DIV_K3,
    CLK_SYSPLLCON1_K2DIV_K4,
    CLK_SYSPLLCON1_K2DIV_K5,
    CLK_SYSPLLCON1_K2DIV_K6,
    CLK_SYSPLLCON1_K2DIV_K7
} Clk_SysPllCon1_K2DivValueType;

/**************************************/
/* A2G System PLL Register SYSPLLCON2 */
/**************************************/
typedef uint16 Clk_SysPllCon2_ModcfgType;
/* SYSPLLCON1 MODCFG Bit 15 until 10 is always fix; Bit 9 to 0 is to calculated */
#ifndef Clk_SysPllCon2_Modcfg_15_10
#define Clk_SysPllCon2_Modcfg_15_10 (uint16(0xF400U))
/*const Clk_SysPllCon2_ModcfgType Clk_SysPllCon2_Modcfg_15_10 = 0xF400U;*/
#endif


/* System Peripherals default value meaning */
#if 0
/* System PLL Status Register SYSPLLSTAT = 0000 0002 -->: */
#define SYSPLLSTAT_PWDSTAT  0x1 /* System PLL Power-saving Mode was entered */
#define SYSPLLSTAT_LOCK

/* SYSPLLCON0 = 4000 3A00 -->: */
#define SYSPLL0_INSEL   0x1     /* Input Selection 01B = fOSC0 us used as clock source. */
#define SYSPLL0_PDIV    0x0     /* PDIV = 0 --> PDIV + 1 = P Divider = 1 */
#define SYSPLL0_RESLD   0x0     /* Restart DC0 Lock Detection is not used. Attention: Read always as zero */
#define SYSPLL0_PLLPWD  0x0     /* System PLL Power Saving Mode  is used --> System PLL Block can not longer be used */
#define SYSPLL0_NDIV    0x1D    /* NDIV = 29 --> NDIV + 1 = N Divider = 30 */
#define SYSPLL0_MODEN   0x0     /* Frequency modulation is not activated */
/* SYSPLLCON1 = 0000 0005 -->: */
#define SYSPLL1_K2DIV   0x5     /* K2DIV = 5 --> K2DIV +1 = K2 Divider = 6 */
/* SYSPLLCON2 = 0000 6000 -->: */
#define SYSPLL2_MODCFG  0x6000  /* Modulation Configuration --> Attention: TS is not clear because default -> useable value */
#endif

/**************************************/
/* A2G Peripheral PLL Register        */
/**************************************/
/******************************************/
/* A2G Peripheral PLL Register PERPLLSTAT */
/******************************************/
typedef enum Clk_PerPllStat_StateType_e
{
    /* PERPLLSTAT state (=Peripheral PLL Status Register) */
    CLK_PERPLLSTAT_RESET_VALUE       =  ( 0x00000002U ),  /* System Reset value */
    CLK_PERPLLSTAT_NORMAL_OPERATION  =  ( 0x00000000U )   /* Normal operation value */
} Clk_PerPllStat_StateType;

typedef enum Clk_PerPllStat_PwdStatStateType_e
{
    /* PERPLLSTAT PWDSTAT states (=Peripheral PLL Power-saving Mode Status) */
    CLK_PERPLLSTAT_PWDSTAT_POWER_SAVING_OFF =  ( 0x0U ),  /* Peripheral PLL Power-saving Mode was not entered */
    CLK_PERPLLSTAT_PWDSTAT_POWER_SAVING_ON  =  ( 0x1U )   /* Peripheral PLL Power-saving Mode was entered */
} Clk_PerPllStat_PwdStatStateType;

typedef enum Clk_PerPllStat_LockStateType_e
{
    /* PERPLLSTAT LOCK states (=Peripheral PLL Lock Status) */
    CLK_PERPLLSTAT_LOCK_FREQ_IS_UNSTABLE  =  ( 0x0U ),  /* The frequency of the Peripheral PLL is not stable
                                                           and does not enable system operation */
    CLK_PERPLLSTAT_LOCK_FREQ_IS_STABLE    =  ( 0x1U )   /* The frequency of the Peripheral PLL is stable and
                                                           enables system operation */
} Clk_PerPllStat_LockStateType;

typedef enum Clk_PerPllStat_K3RdyStateType_e
{
    /* PERPLLSTAT K3RDY states (= K3 Divider Ready Status) */
    CLK_PERPLLSTAT_K3RDY_OLD_VALUE  =  ( 0x0U ),  /* K3-Divider does not yet operate with the new value */
    CLK_PERPLLSTAT_K3RDY_NEW_VALUE  =  ( 0x1U )   /* K3-Divider operating with the new value */
} Clk_PERPllStat_K3RdyStateType;

typedef enum Clk_PerPllStat_K2RdyStateType_e
{
    /* PERPLLSTAT K2RDY states (= K2 Divider Ready Status) */
    CLK_PERPLLSTAT_K2RDY_OLD_VALUE  =  ( 0x0U ),  /* K2-Divider does not yet operate with the new value */
    CLK_PERPLLSTAT_K2RDY_NEW_VALUE  =  ( 0x1U )   /* K2-Divider operating with the new value */
} Clk_PERPllStat_K2RdyStateType;

/******************************************/
/* A2G Peripheral PLL Register PERPLLCON0 */
/******************************************/
typedef enum Clk_PerPllCon0_StateType_e
{
    /* PERPLLCON0 state (=Peripheral PLL Configuration 0 Register) */
    CLK_PERPLLCON0_RESET_VALUE       =  ( 0x00003E00U ),  /* System Reset value */
    CLK_PERPLLCON0_NORMAL_OPERATION  =  ( 0x00000000U )   /* Normal operation value */
} Clk_PerPllCon0_StateType;

typedef enum Clk_PerPllCon0_DivByStateType_e
{
    /* PERPLLCON0 MODEN states (=Divider Bypass) */
    CLK_PERPLLCON0_DIVBY_BYPASS_IS_OFF =  ( 0x0U ),  /* The divide-by-1.6 block in front of the K3-Divider is not bypassed. */
    CLK_PERPLLCON0_DIVBY_BYPASS_IS_ON  =  ( 0x1U )   /* The divide-by-1.6 block in front of the K3-Divider is bypassed. */
} Clk_PerPllCon0_DivByStateType;

typedef enum Clk_PerPllCon0_NDivValueType_e
{
    /* PERPLLCON0 NDIV states (=N-Divider Value)
     * The value the N-Divider operates with is NDIV+1. */
    CLK_PERPLLCON0_NDIV_N1 =  ( 0x0U ),  /* N-Divider = NDIV +1 = 1 */
    CLK_PERPLLCON0_NDIV_N2,          /* N-Divider = NDIV +1 = 2 */
    CLK_PERPLLCON0_NDIV_N3,          /**< \brief  N-divider 3  */
    CLK_PERPLLCON0_NDIV_N4,          /**< \brief  N-divider 4  */
    CLK_PERPLLCON0_NDIV_N5,          /**< \brief  N-divider 5  */
    CLK_PERPLLCON0_NDIV_N6,          /**< \brief  N-divider 6  */
    CLK_PERPLLCON0_NDIV_N7,          /**< \brief  N-divider 7  */
    CLK_PERPLLCON0_NDIV_N8,          /**< \brief  N-divider 8  */
    CLK_PERPLLCON0_NDIV_N9,          /**< \brief  N-divider 9  */
    CLK_PERPLLCON0_NDIV_N10,         /**< \brief  N-divider 10  */
    CLK_PERPLLCON0_NDIV_N11,         /**< \brief  N-divider 11  */
    CLK_PERPLLCON0_NDIV_N12,         /**< \brief  N-divider 12  */
    CLK_PERPLLCON0_NDIV_N13,         /**< \brief  N-divider 13  */
    CLK_PERPLLCON0_NDIV_N14,         /**< \brief  N-divider 14  */
    CLK_PERPLLCON0_NDIV_N15,         /**< \brief  N-divider 15  */
    CLK_PERPLLCON0_NDIV_N16,         /**< \brief  N-divider 16  */
    CLK_PERPLLCON0_NDIV_N17,         /**< \brief  N-divider 17  */
    CLK_PERPLLCON0_NDIV_N18,         /**< \brief  N-divider 18  */
    CLK_PERPLLCON0_NDIV_N19,         /**< \brief  N-divider 19  */
    CLK_PERPLLCON0_NDIV_N20,         /**< \brief  N-divider 20  */
    CLK_PERPLLCON0_NDIV_N21,         /**< \brief  N-divider 21  */
    CLK_PERPLLCON0_NDIV_N22,         /**< \brief  N-divider 22  */
    CLK_PERPLLCON0_NDIV_N23,         /**< \brief  N-divider 23  */
    CLK_PERPLLCON0_NDIV_N24,         /**< \brief  N-divider 24  */
    CLK_PERPLLCON0_NDIV_N25,         /**< \brief  N-divider 25  */
    CLK_PERPLLCON0_NDIV_N26,         /**< \brief  N-divider 26  */
    CLK_PERPLLCON0_NDIV_N27,         /**< \brief  N-divider 27  */
    CLK_PERPLLCON0_NDIV_N28,         /**< \brief  N-divider 28  */
    CLK_PERPLLCON0_NDIV_N29,         /**< \brief  N-divider 29  */
    CLK_PERPLLCON0_NDIV_N30,         /**< \brief  N-divider 30  */
    CLK_PERPLLCON0_NDIV_N31,         /**< \brief  N-divider 31  */
    CLK_PERPLLCON0_NDIV_N32,         /**< \brief  N-divider 32  */
    CLK_PERPLLCON0_NDIV_N33,         /**< \brief  N-divider 33  */
    CLK_PERPLLCON0_NDIV_N34,         /**< \brief  N-divider 34  */
    CLK_PERPLLCON0_NDIV_N35,         /**< \brief  N-divider 35  */
    CLK_PERPLLCON0_NDIV_N36,         /**< \brief  N-divider 36  */
    CLK_PERPLLCON0_NDIV_N37,         /**< \brief  N-divider 37  */
    CLK_PERPLLCON0_NDIV_N38,         /**< \brief  N-divider 38  */
    CLK_PERPLLCON0_NDIV_N39,         /**< \brief  N-divider 39  */
    CLK_PERPLLCON0_NDIV_N40,         /**< \brief  N-divider 40  */
    CLK_PERPLLCON0_NDIV_N41,         /**< \brief  N-divider 41  */
    CLK_PERPLLCON0_NDIV_N42,         /**< \brief  N-divider 42  */
    CLK_PERPLLCON0_NDIV_N43,         /**< \brief  N-divider 43  */
    CLK_PERPLLCON0_NDIV_N44,         /**< \brief  N-divider 44  */
    CLK_PERPLLCON0_NDIV_N45,         /**< \brief  N-divider 45  */
    CLK_PERPLLCON0_NDIV_N46,         /**< \brief  N-divider 46  */
    CLK_PERPLLCON0_NDIV_N47,         /**< \brief  N-divider 47  */
    CLK_PERPLLCON0_NDIV_N48,         /**< \brief  N-divider 48  */
    CLK_PERPLLCON0_NDIV_N49,         /**< \brief  N-divider 49  */
    CLK_PERPLLCON0_NDIV_N50,         /**< \brief  N-divider 50  */
    CLK_PERPLLCON0_NDIV_N51,         /**< \brief  N-divider 51  */
    CLK_PERPLLCON0_NDIV_N52,         /**< \brief  N-divider 52  */
    CLK_PERPLLCON0_NDIV_N53,         /**< \brief  N-divider 53  */
    CLK_PERPLLCON0_NDIV_N54,         /**< \brief  N-divider 54  */
    CLK_PERPLLCON0_NDIV_N55,         /**< \brief  N-divider 55  */
    CLK_PERPLLCON0_NDIV_N56,         /**< \brief  N-divider 56  */
    CLK_PERPLLCON0_NDIV_N57,         /**< \brief  N-divider 57  */
    CLK_PERPLLCON0_NDIV_N58,         /**< \brief  N-divider 58  */
    CLK_PERPLLCON0_NDIV_N59,         /**< \brief  N-divider 59  */
    CLK_PERPLLCON0_NDIV_N60,         /**< \brief  N-divider 60  */
    CLK_PERPLLCON0_NDIV_N61,         /**< \brief  N-divider 61  */
    CLK_PERPLLCON0_NDIV_N62,         /**< \brief  N-divider 62  */
    CLK_PERPLLCON0_NDIV_N63,         /**< \brief  N-divider 63  */
    CLK_PERPLLCON0_NDIV_N64,         /**< \brief  N-divider 64  */
    CLK_PERPLLCON0_NDIV_N65,         /**< \brief  N-divider 65  */
    CLK_PERPLLCON0_NDIV_N66,         /**< \brief  N-divider 66  */
    CLK_PERPLLCON0_NDIV_N67,         /**< \brief  N-divider 67  */
    CLK_PERPLLCON0_NDIV_N68,         /**< \brief  N-divider 68  */
    CLK_PERPLLCON0_NDIV_N69,         /**< \brief  N-divider 69  */
    CLK_PERPLLCON0_NDIV_N70,         /**< \brief  N-divider 70  */
    CLK_PERPLLCON0_NDIV_N71,         /**< \brief  N-divider 71  */
    CLK_PERPLLCON0_NDIV_N72,         /**< \brief  N-divider 72  */
    CLK_PERPLLCON0_NDIV_N73,         /**< \brief  N-divider 73  */
    CLK_PERPLLCON0_NDIV_N74,         /**< \brief  N-divider 74  */
    CLK_PERPLLCON0_NDIV_N75,         /**< \brief  N-divider 75  */
    CLK_PERPLLCON0_NDIV_N76,         /**< \brief  N-divider 76  */
    CLK_PERPLLCON0_NDIV_N77,         /**< \brief  N-divider 77  */
    CLK_PERPLLCON0_NDIV_N78,         /**< \brief  N-divider 78  */
    CLK_PERPLLCON0_NDIV_N79,         /**< \brief  N-divider 79  */
    CLK_PERPLLCON0_NDIV_N80,         /**< \brief  N-divider 80  */
    CLK_PERPLLCON0_NDIV_N81,         /**< \brief  N-divider 81  */
    CLK_PERPLLCON0_NDIV_N82,         /**< \brief  N-divider 82  */
    CLK_PERPLLCON0_NDIV_N83,         /**< \brief  N-divider 83  */
    CLK_PERPLLCON0_NDIV_N84,         /**< \brief  N-divider 84  */
    CLK_PERPLLCON0_NDIV_N85,         /**< \brief  N-divider 85  */
    CLK_PERPLLCON0_NDIV_N86,         /**< \brief  N-divider 86  */
    CLK_PERPLLCON0_NDIV_N87,         /**< \brief  N-divider 87  */
    CLK_PERPLLCON0_NDIV_N88,         /**< \brief  N-divider 88  */
    CLK_PERPLLCON0_NDIV_N89,         /**< \brief  N-divider 89  */
    CLK_PERPLLCON0_NDIV_N90,         /**< \brief  N-divider 90  */
    CLK_PERPLLCON0_NDIV_N91,         /**< \brief  N-divider 91  */
    CLK_PERPLLCON0_NDIV_N92,         /**< \brief  N-divider 92  */
    CLK_PERPLLCON0_NDIV_N93,         /**< \brief  N-divider 93  */
    CLK_PERPLLCON0_NDIV_N94,         /**< \brief  N-divider 94  */
    CLK_PERPLLCON0_NDIV_N95,         /**< \brief  N-divider 95  */
    CLK_PERPLLCON0_NDIV_N96,         /**< \brief  N-divider 96  */
    CLK_PERPLLCON0_NDIV_N97,         /**< \brief  N-divider 97  */
    CLK_PERPLLCON0_NDIV_N98,         /**< \brief  N-divider 98  */
    CLK_PERPLLCON0_NDIV_N99,         /**< \brief  N-divider 99  */
    CLK_PERPLLCON0_NDIV_N100,        /**< \brief  N-divider 100  */
    CLK_PERPLLCON0_NDIV_N101,        /**< \brief  N-divider 101  */
    CLK_PERPLLCON0_NDIV_N102,        /**< \brief  N-divider 102  */
    CLK_PERPLLCON0_NDIV_N103,        /**< \brief  N-divider 103  */
    CLK_PERPLLCON0_NDIV_N104,        /**< \brief  N-divider 104  */
    CLK_PERPLLCON0_NDIV_N105,        /**< \brief  N-divider 105  */
    CLK_PERPLLCON0_NDIV_N106,        /**< \brief  N-divider 106  */
    CLK_PERPLLCON0_NDIV_N107,        /**< \brief  N-divider 107  */
    CLK_PERPLLCON0_NDIV_N108,        /**< \brief  N-divider 108  */
    CLK_PERPLLCON0_NDIV_N109,        /**< \brief  N-divider 109  */
    CLK_PERPLLCON0_NDIV_N110,        /**< \brief  N-divider 110  */
    CLK_PERPLLCON0_NDIV_N111,        /**< \brief  N-divider 111  */
    CLK_PERPLLCON0_NDIV_N112,        /**< \brief  N-divider 112  */
    CLK_PERPLLCON0_NDIV_N113,        /**< \brief  N-divider 113  */
    CLK_PERPLLCON0_NDIV_N114,        /**< \brief  N-divider 114  */
    CLK_PERPLLCON0_NDIV_N115,        /**< \brief  N-divider 115  */
    CLK_PERPLLCON0_NDIV_N116,        /**< \brief  N-divider 116  */
    CLK_PERPLLCON0_NDIV_N117,        /**< \brief  N-divider 117  */
    CLK_PERPLLCON0_NDIV_N118,        /**< \brief  N-divider 118  */
    CLK_PERPLLCON0_NDIV_N119,        /**< \brief  N-divider 119  */
    CLK_PERPLLCON0_NDIV_N120,        /**< \brief  N-divider 120  */
    CLK_PERPLLCON0_NDIV_N121,        /**< \brief  N-divider 121  */
    CLK_PERPLLCON0_NDIV_N122,        /**< \brief  N-divider 122  */
    CLK_PERPLLCON0_NDIV_N123,        /**< \brief  N-divider 123  */
    CLK_PERPLLCON0_NDIV_N124,        /**< \brief  N-divider 124  */
    CLK_PERPLLCON0_NDIV_N125,        /**< \brief  N-divider 125  */
    CLK_PERPLLCON0_NDIV_N126,        /**< \brief  N-divider 126  */
    CLK_PERPLLCON0_NDIV_N127,        /**< \brief  N-divider 127  */
    CLK_PERPLLCON0_NDIV_N128         /**< \brief  N-divider 128  */
} Clk_PerPllCon0_NDivValueType;


typedef enum Clk_PerPllCon0_PllPwdStateType_e
{
    /* PERPLLCON0 MODEN states (=Peripheral PLL Power Saving Mode State) */
    CLK_PERPLLCON0_PLLPWD_POWER_SAVING_ON    =  ( 0x0U ),  /* The complete Peripheral PLL block is put into a Power Saving Mode and can no longer be used. */
    CLK_PERPLLCON0_PLLPWD_POWER_SAVING_OFF   =  ( 0x1U )   /* Normal behavior */
} Clk_PerPllCon0_PllPwdStateType;

typedef enum Clk_PerPllCon0_ResLDStateType_e
{
    /* PERPLLCON0 RESLD states (=Restart DCO Lock Detection)
     * Setting this bit will clear bit SYSPLLSTAT.LOCK and restart the DCO lock detection.
     * Note: Reading this bit returns always a zero.*/
    CLK_PERPLLCON0_RESLD_DEFAULT_READ_VALUE    =  ( 0x0U ),  /* Reading this bit returns always a zero. */
    CLK_PERPLLCON0_RESLD_RESTART_DCO_LOCK_DET  =  ( 0x1U )   /* clear bit SYSPLLSTAT.LOCK and restart the DCO lock detection */
} Clk_PerPllCon0_ResLDStateType;

typedef enum Clk_PerPllCon0_PDivValueType_e
{
    /* PerPLLCON0 PDIV states (=P-Divider Value)
     * This bit controls the activation of the frequency modulation of the peripheral PLL.*/
    CLK_PERPLLCON0_PDIV_P1 =  ( 0x0U ),   /* P-Divider = PDIV +1 = 1 */
    CLK_PERPLLCON0_PDIV_P2,   /* P-Divider = PDIV +1 = 2 */
    CLK_PERPLLCON0_PDIV_P3,   /* P-Divider = PDIV +1 = 3 */
    CLK_PERPLLCON0_PDIV_P4,   /* P-Divider = PDIV +1 = 4 */
    CLK_PERPLLCON0_PDIV_P5,   /* P-Divider = PDIV +1 = 5 */
    CLK_PERPLLCON0_PDIV_P6,   /* P-Divider = PDIV +1 = 6 */
    CLK_PERPLLCON0_PDIV_P7    /* P-Divider = PDIV +1 = 7 */
} Clk_PerPllCon0_PDivValueType;

/******************************************/
/* A2G Peripheral PLL Register PERPLLCON1 */
/******************************************/
typedef enum Clk_PerPllCon1_State_e
{
    /* PERPLLCON1 state (=Peripheral PLL Configuration 1 Register) */
    CLK_PERPLLCON1_RESET_VALUE       =  ( 0x00003E00U ),  /* System Reset value */
    CLK_PERPLLCON1_NORMAL_OPERATION  =  ( 0x00000000U )   /* Normal operation value */
} Clk_PerPllCon1_StateType;

typedef enum Clk_PerPllCon1_K2Div_e
{
    /* PERPLLCON1 K2DIV value (=K2-Divider Value)
     * Note: While PERPLLSTAT.K2RDY = 0, K2DIV is locked. */
    CLK_PERPLLCON1_K2DIV_K2_1 = (0x0),   /* The value the K2-Divider operates with K2DIV=0 => K2 = K2DIV+1=1 */
    CLK_PERPLLCON1_K2DIV_K2_2 = (0x1),   /* The value the K2-Divider operates with K2DIV=1 => K2 = K2DIV+1=2 */
    CLK_PERPLLCON1_K2DIV_K2_3,           /* The value the K2-Divider operates with K2DIV=2 => K2 = K2DIV+1=3 */
    CLK_PERPLLCON1_K2DIV_K2_4,           /* The value the K2-Divider operates with K2DIV=3 => K2 = K2DIV+1=4 */
    CLK_PERPLLCON1_K2DIV_K2_5,
    CLK_PERPLLCON1_K2DIV_K2_6,
    CLK_PERPLLCON1_K2DIV_K2_7,
    CLK_PERPLLCON1_K2DIV_K2_8

} Clk_PerPllCon1_K2DivType;

typedef enum Clk_PerPllCon1_K3Div_e
{
    /* PERPLLCON1 K3DIV value (=K3-Divider Value)
     * Note: While PERPLLSTAT.K2RDY = 0, K3DIV is locked. */
    CLK_PERPLLCON1_K3DIV_K3_1 = (0x0),   /* The value the K2-Divider operates with K3DIV=0 => K3 = K3DIV+1=1 */
    CLK_PERPLLCON1_K3DIV_K3_2,           /* The value the K2-Divider operates with K3DIV=1 => K3 = K3DIV+1=2 */
    CLK_PERPLLCON1_K3DIV_K3_3,
    CLK_PERPLLCON1_K3DIV_K3_4,
    CLK_PERPLLCON1_K3DIV_K3_5,
    CLK_PERPLLCON1_K3DIV_K3_6,
    CLK_PERPLLCON1_K3DIV_K3_7,
    CLK_PERPLLCON1_K3DIV_K3_8
} Clk_PerPllCon1_K3DivType;




/********************************************************************************/
/* A2G CCU (Clock Control Unit) Registers :                                     */
/********************************************************************************/
/* A2G CCU Clock Control Register 0 CCUCON0 */
/********************************************/
typedef enum Clk_CcuCon0_State_e
{
    /* CCUCON0 typical values (=Clock Control Register 0) */
    CLK_CCUCON0_SYSTEM_RESET_VALUE   =  ( 0x05120112U ),  /* System Reset Value */
    CLK_CCUCON0_AFTER_SSW_EXECUTION  =  ( 0x35120112U )   /* After SSW execution */
} Clk_CcuCon0_StateType;

typedef enum Clk_CcuCon0_StmDivValueType_e
{
    /* CCUCON0.B.STMDIV value (=STM Divider Reload Value)
     * Note: For STMDIV = 0000B the clock is shut off.
     *       fSOURCE0 can configured as fPLL0 (CLKSEL=01B) or fBACK = 100 MHz */

    CLK_CCUCON0_STMDIV_WRONG  =  ( -1 ),    /* Not allowed to use */
    CLK_CCUCON0_STMDIV_0      =  ( 0x0U ),  /* fSTM is stopped */
    CLK_CCUCON0_STMDIV_1      =  ( 0x1U ),  /* fSTM = fSOURCE0 */
    CLK_CCUCON0_STMDIV_2      =  ( 0x2U ),  /* fSTM = fSOURCE0 / 2 */
    CLK_CCUCON0_STMDIV_3      =  ( 0x3U ),  /* fSTM = fSOURCE0 / 3 */
    CLK_CCUCON0_STMDIV_4      =  ( 0x4U ),  /* fSTM = fSOURCE0 / 4 */
    CLK_CCUCON0_STMDIV_5      =  ( 0x5U ),  /* fSTM = fSOURCE0 / 5 */
    CLK_CCUCON0_STMDIV_6      =  ( 0x6U ),  /* fSTM = fSOURCE0 / 6 */
    /* 7 is reserved, do not use this combination */
    CLK_CCUCON0_STMDIV_8      =  ( 0x8U ),  /* fSTM = fSOURCE0 / 8 */
    /* 9 is reserved, do not use this combination */
    CLK_CCUCON0_STMDIV_10     =  ( 0xAU ),  /* fSTM = fSOURCE0 / 10 */
    /* B is reserved, do not use this combination */
    CLK_CCUCON0_STMDIV_12     =  ( 0xCU ),  /* fSTM = fSOURCE0 / 12 */
    /* D is reserved, do not use this combination */
    /* E is reserved, do not use this combination */
    CLK_CCUCON0_STMDIV_15     =  ( 0xFU )  /* fSTM = fSOURCE0 / 15 */
} Clk_CcuCon0_StmDivValueType;


typedef enum Clk_CcuCon0_GtmDivValueType_e
{
    /* CCUCON0.B.GTMDIV value (=GTM Divider Reload Value)
     * Note: For GTMDIV = 0000B the clock is shut off.*/

    CLK_CCUCON0_GTMDIV_WRONG  =  ( -1 ),    /* Not allowed to use */
    CLK_CCUCON0_GTMDIV_0      =  ( 0x0U ),  /* fGTM is stopped */
    CLK_CCUCON0_GTMDIV_1      =  ( 0x1U ),  /* fGTM = fSOURCEGTM */
    CLK_CCUCON0_GTMDIV_2      =  ( 0x2U ),  /* fGTM = fSOURCEGTM / 2 */
    CLK_CCUCON0_GTMDIV_3      =  ( 0x3U ),  /* fGTM = fSOURCEGTM / 3 */
    CLK_CCUCON0_GTMDIV_4      =  ( 0x4U ),  /* fGTM = fSOURCEGTM / 4 */
    CLK_CCUCON0_GTMDIV_5      =  ( 0x5U ),  /* fGTM = fSOURCEGTM / 5 */
    CLK_CCUCON0_GTMDIV_6      =  ( 0x6U ),  /* fGTM = fSOURCEGTM / 6 */
    /* 7 is is reserved, do not use this combination */
    CLK_CCUCON0_GTMDIV_8      =  ( 0x8U ),  /* fGTM = fSOURCEGTM / 8 */
    /* 9 is is reserved, do not use this combination */
    CLK_CCUCON0_GTMDIV_10     =  ( 0xAU ),  /* fGTM = fSOURCEGTM / 10 */
    /* B is is reserved, do not use this combination */
    CLK_CCUCON0_GTMDIV_12     =  ( 0xCU ),  /* fGTM = fSOURCEGTM / 12 */
    /* D is is reserved, do not use this combination */
    /* E is is reserved, do not use this combination */
    CLK_CCUCON0_GTMDIV_15     =  ( 0xFU )  /* fGTM = fSOURCEGTM / 15 */
} Clk_CcuCon0_GtmDivValueType;

typedef enum Clk_CcuCon0_SriDivValueType_e
{
    /* CCUCON0.B.SRIDIV value (=SRI Divider Reload Value)
     * Note: The resulting SRI frequency is configured to
     *       fSRI = fsource0 / SRIDIV for the allowed configurations.
     *       fsource0 could be configured either to fPLL0 (CLKSEL = 01B)
     *       or fBACK (CLKSEL = 00B) */

    CLK_CCUCON0_SRIDIV_WRONG  =  ( -1 ),    /* Not allowed to use */
    /* 0 is reserved, do not use this combination */
    CLK_CCUCON0_SRIDIV_1      =  ( 0x1U ),  /* fSRI = fSOURCE0 */
    CLK_CCUCON0_SRIDIV_2      =  ( 0x2U ),  /* fSRI = fSOURCE0 / 2 */
    CLK_CCUCON0_SRIDIV_3      =  ( 0x3U ),  /* fSRI = fSOURCE0 / 3 */
    CLK_CCUCON0_SRIDIV_4      =  ( 0x4U ),  /* fSRI = fSOURCE0 / 4 */
    CLK_CCUCON0_SRIDIV_5      =  ( 0x5U ),  /* fSRI = fSOURCE0 / 5 */
    CLK_CCUCON0_SRIDIV_6      =  ( 0x6U ),  /* fSRI = fSOURCE0 / 6 */
    /* 7 is reserved, do not use this combination */
    CLK_CCUCON0_SRIDIV_8      =  ( 0x8U ),  /* fSRI = fSOURCE0 / 8 */
    /* 9 is reserved, do not use this combination */
    CLK_CCUCON0_SRIDIV_10     =  ( 0xAU ),  /* fSRI = fSOURCE0 / 10 */
    /* B is reserved, do not use this combination */
    CLK_CCUCON0_SRIDIV_12     =  ( 0xCU ),  /* fSRI = fSOURCE0 / 12 */
    /* D is reserved, do not use this combination */
    /* E is reserved, do not use this combination */
    CLK_CCUCON0_SRIDIV_15     =  ( 0xFU )   /* fSRI = fSOURCE0 / 15 */
} Clk_CcuCon0_SriDivValueType;

typedef enum Clk_CcuCon0_LPDivValueType_e
{
    /* CCUCON0.B.LPDIV value (=Low Power Divider Reload Value)
     * Note: The selected divider is valid for all clocks derived from
     *       fXXX with XXX = SPB, SRI, BBB, FSI, GETH, GTM, ADAS. */

    CLK_CCUCON0_LPDIV_WRONG  =  ( -1 ),    /* Not allowed to use */
    CLK_CCUCON0_LPDIV_0      =  ( 0x0U ),  /* fxxx controlled by the related CCUCON0/5 bit fields */
    CLK_CCUCON0_LPDIV_1      =  ( 0x1U ),  /* fxxx = fSOURCE0 / 30 */
    CLK_CCUCON0_LPDIV_2      =  ( 0x2U ),  /* fxxx = fSOURCE0 / 60 */
    CLK_CCUCON0_LPDIV_3      =  ( 0x3U ),  /* fxxx = fSOURCE0 / 120 */
    CLK_CCUCON0_LPDIV_4      =  ( 0x4U )   /* fxxx = fSOURCE0 / 2400 */
    /* 5 is reserved, do not use this combination */
    /* 6 is reserved, do not use this combination */
    /* 7 is reserved, do not use this combination */
} Clk_CcuCon0_LPDivValueType;

typedef enum Clk_CcuCon0_SpbDivValueType_e
{
    /* CCUCON0.B.SPBDIV value (=SPB Divider Reload Value)
     * Note: fsource0 could be configured either to fPLL (CLKSEL = 01B)
     *       or fBACK (CLKSEL = 00B)) */
    CLK_CCUCON0_SPBDIV_WRONG  =  ( -1 ),    /* Not allowed to use */
    /* 0 is reserved, do not use this combination */
    CLK_CCUCON0_SPBDIV_1      =  ( 0x1U ),  /* fSPB = fSOURCE0 */
    CLK_CCUCON0_SPBDIV_2      =  ( 0x2U ),  /* fSPB = fSOURCE0 / 2 */
    CLK_CCUCON0_SPBDIV_3      =  ( 0x3U ),  /* fSPB = fSOURCE0 / 3 */
    CLK_CCUCON0_SPBDIV_4      =  ( 0x4U ),  /* fSPB = fSOURCE0 / 4 */
    CLK_CCUCON0_SPBDIV_5      =  ( 0x5U ),  /* fSPB = fSOURCE0 / 5 */
    CLK_CCUCON0_SPBDIV_6      =  ( 0x6U ),  /* fSPB = fSOURCE0 / 6 */
    /* 7 is reserved, do not use this combination */
    CLK_CCUCON0_SPBDIV_8      =  ( 0x8U ),  /* fSPB = fSOURCE0 / 8 */
    /* 9 is reserved, do not use this combination */
    CLK_CCUCON0_SPBDIV_10     =  ( 0xAU ),  /* fSPB = fSOURCE0 / 10 */
    /* B is reserved, do not use this combination */
    CLK_CCUCON0_SPBDIV_12     =  ( 0xCU ),  /* fSPB = fSOURCE0 / 12 */
    /* D is reserved, do not use this combination */
    /* E is reserved, do not use this combination */
    CLK_CCUCON0_SPBDIV_15     =  ( 0xFU )   /* fSPB = fSOURCE0 / 15 */
} Clk_CcuCon0_SpbDivValueType;

typedef enum Clk_CcuCon0_BbbDivValueType_e
{
    /* CCUCON0.B.BBBDIV value (=BBB Divider Reload Value)
     * Note: The resulting BBB frequency is configured to
     *       fBBB = fsource0 / BBBDIV for all allowed configurations.
     *       For BBBDIV = 0000B the clock is shut off.
     *       fsource0 could be configured either to fPLL0 (CLKSEL = 01B)
     *       or fBACK */
    CLK_CCUCON0_BBBDIV_WRONG  =  ( -1 ),    /* Not allowed to use */
    CLK_CCUCON0_BBBDIV_0      =  ( 0x0U ),  /* fBBB is stopped */
    CLK_CCUCON0_BBBDIV_1      =  ( 0x1U ),  /* fBBB = fSOURCE0 */
    CLK_CCUCON0_BBBDIV_2      =  ( 0x2U ),  /* fBBB = fSOURCE0 / 2 */
    CLK_CCUCON0_BBBDIV_3      =  ( 0x3U ),  /* fBBB = fSOURCE0 / 3 */
    CLK_CCUCON0_BBBDIV_4      =  ( 0x4U ),  /* fBBB = fSOURCE0 / 4 */
    CLK_CCUCON0_BBBDIV_5      =  ( 0x5U ),  /* fBBB = fSOURCE0 / 5 */
    CLK_CCUCON0_BBBDIV_6      =  ( 0x6U ),  /* fBBB = fSOURCE0 / 6 */
    /* 7 is reserved, do not use this combination */
    CLK_CCUCON0_BBBDIV_8      =  ( 0x8U ),  /* fBBB = fSOURCE0 / 8 */
    /* 9 is reserved, do not use this combination */
    CLK_CCUCON0_BBBDIV_10     =  ( 0xAU ),  /* fBBB = fSOURCE0 / 10 */
    /* B is reserved, do not use this combination */
    CLK_CCUCON0_BBBDIV_12     =  ( 0xCU ),  /* fBBB = fSOURCE0 / 12 */
    /* D is reserved, do not use this combination */
    /* E is reserved, do not use this combination */
    CLK_CCUCON0_BBBDIV_15     =  ( 0xFU )   /* fBBB = fSOURCE0 / 15 */
} Clk_CcuCon0_BbbDivValueType;

typedef enum Clk_CcuCon0_FsiDivValueType_e
{
    /* CCUCON0.B.FSIDIV value (=FSI Divider Reload Value) */
    CLK_CCUCON0_FSIDIV_WRONG  =  ( -1 ),    /* Not allowed to use */
    CLK_CCUCON0_FSIDIV_0      =  ( 0x0U ),  /* 0 is reserved, do not use this combination */
    CLK_CCUCON0_FSIDIV_1      =  ( 0x1U ),  /* fFSI = fSRI */
    CLK_CCUCON0_FSIDIV_2      =  ( 0x2U ),  /* fFSI = fSRI / 2 for SRIDIV = 0001B or 0010B, else fFSI = fSRI */
    CLK_CCUCON0_FSIDIV_3      =  ( 0x3U )   /* fFSI = fSRI / 3 for SRIDIV = 0001B or 0010B, else fFSI = fSRI */
} Clk_CcuCon0_FsiDivValueType;

typedef enum Clk_CcuCon0_Fsi2DivValueType_e
{
    /* CCUCON0.B.FSI2DIV value (=FSI2 Divider Reload Value) */
    CLK_CCUCON0_FSI2DIV_WRONG  =  ( -1 ),    /* Not allowed to use */
    CLK_CCUCON0_FSI2DIV_0      =  ( 0x0U ),  /* 0 is reserved, do not use this combination */
    CLK_CCUCON0_FSI2DIV_1      =  ( 0x1U ),  /* fFSI2 = fSRI */
    CLK_CCUCON0_FSI2DIV_2      =  ( 0x2U ),  /* 2 is reserved, do not use this combination */
    CLK_CCUCON0_FSI2DIV_3      =  ( 0x3U )   /* 3 is reserved, do not use this combination */
} Clk_CcuCon0_Fsi2DivValueType;

typedef enum Clk_CcuCon0_ClkSelValueType_e
{
    /* CCUCON0.B.CLKSEL value (=Clock Selection for Source)
     * Note: This bit field defines the clock source that is used for the
     *       clock generation of fsourcex. */
    CLK_CCUCON0_CLKSEL_WRONG      =  ( -1 ),    /* Not allowed to use */
    CLK_CCUCON0_CLKSEL_FBACK      =  ( 0x0U ),  /* fBACK is used as clock source fsource0, fsrc1, and fsource2 */
    CLK_CCUCON0_CLKSEL_FPLLX      =  ( 0x1U ),  /* fPLL0 is used as clock source fsource0; fPLL1 is used as clock source fsrc1; fPLL2 is used as clock source fsource2 */
    CLK_CCUCON0_CLKSEL_RESERVED10 =  ( 0x2U ),  /* 2 Reserved, do not use this combination */
    CLK_CCUCON0_CLKSEL_RESERVED11 =  ( 0x3U )   /* 3 Reserved, do not use this combination */
} Clk_CcuCon0_ClkSelValueType;

typedef enum Clk_CcuCon0_UpValueType_e
{
    /* CCUCON0.B.UP value (=Update Request)
     * Note: Setting this bit will request an update for CCUCON0 and CCUCON5.
     *       Only one UP bit must be set for either CCUCON0 or CCUCON5.
     *       This bit always reads as zero. */
    CLK_CCUCON0_UP_WRONG                =  ( -1 ),    /* Not allowed to use */
    CLK_CCUCON0_UP_NO_ACTION            =  ( 0x0U ),  /* No action */
    CLK_CCUCON0_UP_SEND_UPDATE_REQUEST  =  ( 0x1U )   /* A new complete parameter set is transferred to the CCU defined by
                                                            registers CCUCON0 and CCUCON5. */
} Clk_CcuCon0_UpValueType;

typedef enum Clk_CcuCon0_LckValueType_e
{
    /* CCUCON0.B.LCK value (=Lock Status)
     * Note: This bit indicates if the register can be updated with a new
     *       value or if the register is locked and a write action from the
     *       bus side has no effect. */
    CLK_CCUCON0_LCK_WRONG  =  ( -1 ),    /* Not allowed to use */
    CLK_CCUCON0_LCK_UNLOCK =  ( 0x0U ),  /* The register is unlocked and can be updated */
    CLK_CCUCON0_LCK_LOCK   =  ( 0x1U )   /* The register is locked and can not be updated */
} Clk_CcuCon0_LckValueType;

/********************************************/
/* A2G CCU Clock Control Register 1 CCUCON1 */
/********************************************/
typedef enum Clk_CcuCon1_State_e
{
    /* CCUCON1 typical values (=Clock Control Register 1) */
    CLK_CCUCON1_SYSTEM_RESET_VALUE   =  ( 0x35120112U ),  /* System Reset Value */
    CLK_CCUCON1_AFTER_SSW_EXECUTION  =  ( 0x05120112U )   /* After SSW execution */
} Clk_CcuCon1_StateType;

typedef enum Clk_CcuCon1_MCanDivValueType_e
{
    /* CCUCON1.B.MCANDIV value (=MCAN Divider Reload Value)
     * Note: The resulting MCAN frequency is configured to fMCANI = fsource1 / MCANDIV
     *       for the allowed configurations. For MCANDIV = 0000B the clock is shut off. */
    CLK_CCUCON1_MCANDIV_WRONG  =  ( -1 ),    /* Not allowed to use */
    CLK_CCUCON1_MCANDIV_0_STOP =  ( 0x0U ),  /* fMCANI is stopped */
    CLK_CCUCON1_MCANDIV_1      =  ( 0x1U ),  /* fMCANI = fSOURCE1 */
    CLK_CCUCON1_MCANDIV_2      =  ( 0x2U ),  /* fMCANI = fSOURCE1 / 2 */
    CLK_CCUCON1_MCANDIV_3      =  ( 0x3U ),  /* fMCANI = fSOURCE1 / 3 */
    CLK_CCUCON1_MCANDIV_4      =  ( 0x4U ),  /* fMCANI = fSOURCE1 / 4 */
    CLK_CCUCON1_MCANDIV_5      =  ( 0x5U ),  /* fMCANI = fSOURCE1 / 5 */
    CLK_CCUCON1_MCANDIV_6      =  ( 0x6U ),  /* fMCANI = fSOURCE1 / 6 */
    /* 7 is reserved, do not use this combination */
    CLK_CCUCON1_MCANDIV_8      =  ( 0x8U ),  /* fMCANI = fSOURCE1 / 8 */
    /* 9 is reserved, do not use this combination */
    CLK_CCUCON1_MCANDIV_10     =  ( 0xAU ),  /* fMCANI = fSOURCE1 / 10 */
    /* B is reserved, do not use this combination */
    CLK_CCUCON1_MCANDIV_12     =  ( 0xCU ),  /* fMCANI = fSOURCE1 / 12 */
    /* D is reserved, do not use this combination */
    /* E is reserved, do not use this combination */
    CLK_CCUCON1_MCANDIV_15     =  ( 0xFU )   /* fMCANI = fSOURCE1 / 15 */
} Clk_CcuCon1_MCanDivValueType;

typedef enum Clk_CcuCon1_ClkSelMCanValueType_e
{
    /* CCUCON1.B.CLKSELMCAN value (=Clock Selection for Source for MCAN)
     * This bit field defines the clock source that is used for the clock generation of fSOURCEMCAN.
     * Note: For switching between two non-zero configurations the following sequence has to
     *       be applied:
     *       1.) First step is to switch to 00B.
     *       2.) Second step is to switch to the new target configuration.*/
    CLK_CCUCON1_CLKSELMCAN_WRONG      =  ( -1 ),    /* Not allowed to use */
    CLK_CCUCON1_CLKSELMCAN_STOP       =  ( 0x0U ),  /* fMCAN clock is stopped */
    CLK_CCUCON1_CLKSELMCAN_FMCANI     =  ( 0x1U ),  /* fMCANI is used as clock source fMCAN */
    CLK_CCUCON1_CLKSELMCAN_FOSC0      =  ( 0x2U ),  /* fOSC0 is used as clock source fMCAN */
    CLK_CCUCON1_CLKSELMCAN_RESERVED   =  ( 0x3U )   /* 3 Reserved, do not use this combination */
} Clk_CcuCon1_ClkSelMCanValueType;

typedef enum Clk_CcuCon1_Pll1DivDisValueType_e
{
    /* CCUCON1.B.PLL1DIVDIS value (=Divider Disable for fPLL1)
     * Depending on CCUCON0.CLKSEL, this bit selects whether fsource1 is half fpll1. */
    CLK_CCUCON1_PLL1DIVDIS_WRONG  =  ( -1 ),    /* Not allowed to use */
    CLK_CCUCON1_PLL1DIVDIS_0      =  ( 0x0U ),  /* CLKSEL != 01 --> fsource1= fback
                                                      CLKSEL = 01 --> fsource1= fpll1/2 */
    CLK_CCUCON1_PLL1DIVDIS_1      =  ( 0x1U ),  /* CLKSEL != 01 --> fsource1= fback
                                                      CLKSEL = 01 --> fsource1= fpll1 */
} Clk_CcuCon1_Pll1DivDisValueType;

typedef enum Clk_CcuCon1_I2CDivValueType_e
{
    /* CCUCON1.B.I2CDIV value (=I2C Divider Reload Value)
     * The resulting I2C frequency is configured to fI2C = fSOURCE2 / I2CDIV for the
     * allowed configurations.
     * For I2CDIV = 0000B the clock is shut off. */
    CLK_CCUCON1_I2CDIV_WRONG  =  ( -1 ),    /* Not allowed to use */
    CLK_CCUCON1_I2CDIV_0_STOP =  ( 0x0U ),  /* fI2C is stopped */
    CLK_CCUCON1_I2CDIV_1      =  ( 0x1U ),  /* fI2C = fSOURCE2 */
    CLK_CCUCON1_I2CDIV_2      =  ( 0x2U ),  /* fI2C = fSOURCE2 / 2 */
    CLK_CCUCON1_I2CDIV_3      =  ( 0x3U ),  /* fI2C = fSOURCE2 / 3 */
    CLK_CCUCON1_I2CDIV_4      =  ( 0x4U ),  /* fI2C = fSOURCE2 / 4 */
    CLK_CCUCON1_I2CDIV_5      =  ( 0x5U ),  /* fI2C = fSOURCE2 / 5 */
    CLK_CCUCON1_I2CDIV_6      =  ( 0x6U ),  /* fI2C = fSOURCE2 / 6 */
    /* 7 is reserved, do not use this combination */
    CLK_CCUCON1_I2CDIV_8      =  ( 0x8U ),  /* fI2C = fSOURCE2 / 8 */
    /* 9 is reserved, do not use this combination */
    CLK_CCUCON1_I2CDIV_10     =  ( 0xAU ),  /* fI2C = fSOURCE2 / 10 */
    /* B is reserved, do not use this combination */
    CLK_CCUCON1_I2CDIV_12     =  ( 0xCU ),  /* fI2C = fSOURCE2 / 12 */
    /* D is reserved, do not use this combination */
    /* E is reserved, do not use this combination */
    CLK_CCUCON1_I2CDIV_15     =  ( 0xFU )   /* fI2C = fSOURCE2 / 15 */
} Clk_CcuCon1_I2CDivValueType;

typedef enum Clk_CcuCon1_MscDivValueType_e
{
    /* CCUCON1.B.MSCDIV value (=MSC Divider Reload Value)
     * The resulting MSC frequency is configured to fMSC = fSOURCEMSC / MSCDIV for the
     * allowed configurations.
     * For MSCDIV = 0000B the clock is shut off. */
    CLK_CCUCON1_MSCDIV_WRONG  =  ( -1 ),    /* Not allowed to use */
    CLK_CCUCON1_MSCDIV_0_STOP =  ( 0x0U ),  /* fMSC is stopped */
    CLK_CCUCON1_MSCDIV_1      =  ( 0x1U ),  /* fMSC = fSOURCEMSC */
    CLK_CCUCON1_MSCDIV_2      =  ( 0x2U ),  /* fMSC = fSOURCEMSC / 2 */
    CLK_CCUCON1_MSCDIV_3      =  ( 0x3U ),  /* fMSC = fSOURCEMSC / 3 */
    CLK_CCUCON1_MSCDIV_4      =  ( 0x4U ),  /* fMSC = fSOURCEMSC / 4 */
    CLK_CCUCON1_MSCDIV_5      =  ( 0x5U ),  /* fMSC = fSOURCEMSC / 5 */
    CLK_CCUCON1_MSCDIV_6      =  ( 0x6U ),  /* fMSC = fSOURCEMSC / 6 */
    /* 7 is reserved, do not use this combination */
    CLK_CCUCON1_MSCDIV_8      =  ( 0x8U ),  /* fMSC = fSOURCEMSC / 8 */
    /* 9 is reserved, do not use this combination */
    CLK_CCUCON1_MSCDIV_10     =  ( 0xAU ),  /* fMSC = fSOURCEMSC / 10 */
    /* B is reserved, do not use this combination */
    CLK_CCUCON1_MSCDIV_12     =  ( 0xCU ),  /* fMSC = fSOURCEMSC / 12 */
    /* D is reserved, do not use this combination */
    /* E is reserved, do not use this combination */
    CLK_CCUCON1_MSCDIV_15     =  ( 0xFU )   /* fMSC = fSOURCEMSC / 15 */
} Clk_CcuCon1_MscDivValueType;

typedef enum Clk_CcuCon1_ClkSelMscValueType_e
{
    /* CCUCON1.B.CLKSELMCAN value (=Clock Selection for Source for MCAN)
     * This bit field defines the clock source that is used for the clock generation
     * of fSOURCEMSC.
     * Note: For switching between two non-zero configurations the
     *       following sequence has to be applied: First step is to switch to
     *       00B. Second step is to switch to the new target configuration. */
    CLK_CCUCON1_CLKSELMSC_WRONG       =  (   -1 ),  /* Not allowed to use */
    CLK_CCUCON1_CLKSELMSC_0_STOP      =  ( 0x0U ),  /* fMSC clock is stopped */
    CLK_CCUCON1_CLKSELMSC_1_FSOURCE1  =  ( 0x1U ),  /* fSOURCE1 is used as clock source fSOURCEMSC */
    CLK_CCUCON1_CLKSELMSC_2_FSOURCE2  =  ( 0x2U ),  /* fSOURCE2 is used as clock source fSOURCEMSC */
    CLK_CCUCON1_CLKSELMSC_3_RESERVED  =  ( 0x3U )   /* 3 Reserved, do not use this combination */
} Clk_CcuCon1_ClkSelMscValueType;

typedef enum Clk_CcuCon1_QspiDivValueType_e
{
    /* CCUCON1.B.QSPIDIV value (=QSPI Divider Reload Value)
     * The resulting QSPI frequency is configured to fQSPI = fSOURCEQSPI / QSPIDIV for the
     * allowed configurations.
     * For QSPIDIV = 0000B the clock is shut off. */
    CLK_CCUCON1_QSPIDIV_WRONG  =  ( -1 ),    /* Not allowed to use */
    CLK_CCUCON1_QSPIDIV_0_STOP =  ( 0x0U ),  /* fQSPI is stopped */
    CLK_CCUCON1_QSPIDIV_1      =  ( 0x1U ),  /* fQSPI = fSOURCEQSPI */
    CLK_CCUCON1_QSPIDIV_2      =  ( 0x2U ),  /* fQSPI = fSOURCEQSPI / 2 */
    CLK_CCUCON1_QSPIDIV_3      =  ( 0x3U ),  /* fQSPI = fSOURCEQSPI / 3 */
    CLK_CCUCON1_QSPIDIV_4      =  ( 0x4U ),  /* fQSPI = fSOURCEQSPI / 4 */
    CLK_CCUCON1_QSPIDIV_5      =  ( 0x5U ),  /* fQSPI = fSOURCEQSPI / 5 */
    CLK_CCUCON1_QSPIDIV_6      =  ( 0x6U ),  /* fQSPI = fSOURCEQSPI / 6 */
    /* 7 is reserved, do not use this combination */
    CLK_CCUCON1_QSPIDIV_8      =  ( 0x8U ),  /* fMSC = fSOURCEQSPI / 8 */
    /* 9 is reserved, do not use this combination */
    CLK_CCUCON1_QSPIDIV_10     =  ( 0xAU ),  /* fMSC = fSOURCEQSPI / 10 */
    /* B is reserved, do not use this combination */
    CLK_CCUCON1_QSPIDIV_12     =  ( 0xCU ),  /* fMSC = fSOURCEQSPI / 12 */
    /* D is reserved, do not use this combination */
    /* E is reserved, do not use this combination */
    CLK_CCUCON1_QSPIDIV_15     =  ( 0xFU )   /* fMSC = fSOURCEQSPI / 15 */
} Clk_CcuCon1_QspiDivValueType;

typedef enum Clk_CcuCon1_ClkSelQspiValueType_e
{
    /* CCUCON1.B.CLKSELQSPI value (=Clock Selection for Source for QSPI)
     * This bit field defines the clock source that is used for the clock generation
     * of fSOURCEQSPI.
     * Note: For switching between two non-zero configurations the
     *       following sequence has to be applied: First step is to switch to
     *       00B. Second step is to switch to the new target configuration. */
    CLK_CCUCON1_CLKSELQSPI_WRONG       =  (   -1 ),  /* Not allowed to use */
    CLK_CCUCON1_CLKSELQSPI_0_STOP      =  ( 0x0U ),  /* fQSPI clock is stopped */
    CLK_CCUCON1_CLKSELQSPI_1_FSOURCE1  =  ( 0x1U ),  /* fSOURCE1 is used as clock source fSOURCEQSPI */
    CLK_CCUCON1_CLKSELQSPI_2_FSOURCE2  =  ( 0x2U ),  /* fSOURCE2 is used as clock source fSOURCEQSPI */
    CLK_CCUCON1_CLKSELQSPI_3_RESERVED  =  ( 0x3U )   /* 3 Reserved, do not use this combination */
} Clk_CcuCon1_ClkSelQspiValueType;

/********************************************
 * A2G CCU Clock Control CCUCON2
 ********************************************/
typedef enum Clk_CcuCon2_AsclinFDivValueType_e
{
    /* CCUCON2.B.ASCLINFDIV value (=ASCLIN Fast Divider Reload Value)
     * The resulting ASCLIN frequency is configured to fASCLINF = fSOURCE2 /
     * ASCLINFDIV for the allowed configurations.
     * For ASCLINFDIV = 0000B the clock is shut off.
     * fSOURCE2 could be configured either to fPLL2 (CLKSEL = 01B) */
    CLK_CCUCON2_ASCLINFDIV_WRONG  =  (   -1 ),    /* Not allowed to use */
    CLK_CCUCON2_ASCLINFDIV_0_STOP =  ( 0x0U ),  /* fASCLINF is stopped */
    CLK_CCUCON2_ASCLINFDIV_1      =  ( 0x1U ),  /* fASCLINF = fSOURCE2 */
    CLK_CCUCON2_ASCLINFDIV_2      =  ( 0x2U ),  /* fASCLINF = fSOURCE2 / 2 */
    CLK_CCUCON2_ASCLINFDIV_3      =  ( 0x3U ),  /* fASCLINF = fSOURCE2 / 3 */
    CLK_CCUCON2_ASCLINFDIV_4      =  ( 0x4U ),  /* fASCLINF = fSOURCE2 / 4 */
    CLK_CCUCON2_ASCLINFDIV_5      =  ( 0x5U ),  /* fASCLINF = fSOURCE2 / 5 */
    CLK_CCUCON2_ASCLINFDIV_6      =  ( 0x6U ),  /* fASCLINF = fSOURCE2 / 6 */
    /* 7 is reserved, do not use this combination */
    CLK_CCUCON2_ASCLINFDIV_8      =  ( 0x8U ),  /* fASCLINF = fSOURCE2 / 8 */
    /* 9 is reserved, do not use this combination */
    CLK_CCUCON2_ASCLINFDIV_10     =  ( 0xAU ),  /* fASCLINF = fSOURCE2 / 10 */
    /* B is reserved, do not use this combination */
    CLK_CCUCON2_ASCLINFDIV_12     =  ( 0xCU ),  /* fASCLINF = fSOURCE2 / 12 */
    /* D is reserved, do not use this combination */
    /* D is reserved, do not use this combination */
    CLK_CCUCON2_ASCLINFDIV_15     =  ( 0xFU )   /* fASCLINF = fSOURCE2 / 15 */
} Clk_CcuCon2_AsclinFDivValueType;

typedef enum Clk_CcuCon2_AsclinSDivValueType_e
{
    /* CCUCON2.B.ASCLINSDIV value (=ASCLIN Slow Divider Reload Value)
     * The resulting ASCLIN frequency is configured to fASCLINS = fSOURCE1 /
     * ASCLINSDIV for the allowed configurations.
     * For ASCLINSDIV = 0000B the clock is shut off.
     * fSOURCE1 could be configured either to fPLL1 (CLKSEL = 01B) */
    CLK_CCUCON2_ASCLINSDIV_WRONG  =  (   -1 ),  /* Not allowed to use */
    CLK_CCUCON2_ASCLINSDIV_0_STOP =  ( 0x0U ),  /* fASCLINS is stopped */
    CLK_CCUCON2_ASCLINSDIV_1      =  ( 0x1U ),  /* fASCLINS = fSOURCE1 */
    CLK_CCUCON2_ASCLINSDIV_2      =  ( 0x2U ),  /* fASCLINS = fSOURCE1 / 2 */
    CLK_CCUCON2_ASCLINSDIV_3      =  ( 0x3U ),  /* fASCLINS = fSOURCE1 / 3 */
    CLK_CCUCON2_ASCLINSDIV_4      =  ( 0x4U ),  /* fASCLINS = fSOURCE1 / 4 */
    CLK_CCUCON2_ASCLINSDIV_5      =  ( 0x5U ),  /* fASCLINS = fSOURCE1 / 5 */
    CLK_CCUCON2_ASCLINSDIV_6      =  ( 0x6U ),  /* fASCLINS = fSOURCE1 / 6 */
    /* 7 is reserved, do not use this combination */
    CLK_CCUCON2_ASCLINSDIV_8      =  ( 0x8U ),  /* fASCLINS = fSOURCE1 / 8 */
    /* 9 is reserved, do not use this combination */
    CLK_CCUCON2_ASCLINSDIV_10     =  ( 0xAU ),  /* fASCLINS = fSOURCE1 / 10 */
    /* B is reserved, do not use this combination */
    CLK_CCUCON2_ASCLINSDIV_12     =  ( 0xCU ),  /* fASCLINS = fSOURCE1 / 12 */
    /* D is reserved, do not use this combination */
    /* D is reserved, do not use this combination */
    CLK_CCUCON2_ASCLINSDIV_15     =  ( 0xFU )   /* fASCLINS = fSOURCE1 / 15 */
} Clk_CcuCon2_AsclinSDivValueType;

typedef enum Clk_CcuCon2_ClkSelAsclinSValueType_e
{
    /* CCUCON1.B.CLKSELQSPI value (=Clock Selection for Source for QSPI)
     * This bit field defines the clock source that is used for the clock generation
     * of fSOURCEQSPI.
     * Note: For switching between two non-zero configurations the
     *       following sequence has to be applied: First step is to switch to
     *       00B. Second step is to switch to the new target configuration. */
    CLK_CCUCON2_CLKSELASCLINS_WRONG       =  (   -1 ),  /* Not allowed to use */
    CLK_CCUCON2_CLKSELASCLINS_0_STOP      =  ( 0x0U ),  /* fASCLINS clock is stopped */
    CLK_CCUCON2_CLKSELASCLINS_1_FASCLINSI =  ( 0x1U ),  /* fASCLINSI is used as clock source fASCLINS */
    CLK_CCUCON2_CLKSELASCLINS_2_FOSC      =  ( 0x2U ),  /* fOSC is used as clock source fASCLINS */
    CLK_CCUCON2_CLKSELASCLINS_3_RESERVED  =  ( 0x3U )   /* 3 Reserved, do not use this combination */
} Clk_CcuCon2_ClkSelAsclinSValueType;

typedef enum Clk_CcuCon2_ClkSelEbuPerOnValueType_e
{
    /* CCUCON2.B.EBUPERON value (=Power Safe SwitchOff for EBU Clock)
     * This bit is used to control the EBU peripheral clock fEBU for power saving
     * purposes if the logic is not used by the application. */
    CLK_CCUCON2_EBUPERON_WRONG       =  (   -1 ),  /* Not allowed to use    */
    CLK_CCUCON2_EBUPERON_0_STOP      =  ( 0x0U ),  /* fEBU clock is stopped */
    CLK_CCUCON2_EBUPERON_1_FSOURCE1  =  ( 0x1U ),  /* fEBU = fSOURCE1       */
} Clk_CcuCon2_ClkSelEbuPerOnValueType;

typedef enum Clk_CcuCon2_ClkSelErayPerOnValueType_e
{
    /* CCUCON2.B.ERAYPERON value (=Power Safe SwitchOff for ERAY Clock)
     * This bit is used to control the ERAY peripheral clock fERAY for power saving
     * purposes if the logic is not used by the application. */
    CLK_CCUCON2_ERAYPERON_WRONG            =  (   -1 ),  /* Not allowed to use    */
    CLK_CCUCON2_ERAYPERON_0_STOP           =  ( 0x0U ),  /* fERAY clock is stopped */
    CLK_CCUCON2_ERAYPERON_1_FSOURCE1_HALF  =  ( 0x1U ),  /* fERAY = fSOURCE1 / 2   */
} Clk_CcuCon2_ClkSelErayPerOnValueType;

typedef enum Clk_CcuCon2_ClkSelHspdmPerOnValueType_e
{
    /* CCUCON2.B.HSPDMPERON value (=Power Safe SwitchOff for HSPDM Clocks)
     * This bit is used to control the HSPDM peripheral clocks fHSPDM_320 and
     * fHSPDM_160 for power saving purposes if the logic is not used by the
     * application.*/
    CLK_CCUCON2_HSPDMPERON_WRONG             =  (   -1 ),  /* Not allowed to use    */
    CLK_CCUCON2_HSPDMPERON_0_STOP            =  ( 0x0U ),  /* fHSPDM_320 is stopped; fHSPDM_160 is stopped */
    CLK_CCUCON2_HSPDMPERON_1_FSRC1_FSOURCE1  =  ( 0x1U ),  /* fHSPDM_320 = fsrc1; fHSPDM_160 = fsource1 */
} Clk_CcuCon2_ClkSelHspdmPerOnValueType;


typedef enum Clk_CcuCon2_LckType_e
{
    /* Update Request */
    /* This bit indicates if the register can be updated with a new value or if the
     * register is locked and a write action from the bus side has no effect.
     * Note: The lock bit is set when at least one bit field is changed, and
     *       released when this change is executed. */
    CLK_CCUCON2_LCK_REG_UNLOCKED =  ( 0x0U ), /* The register is unlocked and can be updated */
    CLK_CCUCON2_LCK_REG_LOCKED   =  ( 0x1U )  /* The register is locked and can not be updated */
} Clk_CcuCon2_LckType;

/********************************************
 * A2G CCU Clock Control CCUCON5
 ********************************************/
typedef enum Clk_CcuCon5_GETHDivValueType_e
{
    /* CCUCON5.B.GETHDIV value (=GETH Divider Reload Value)
     * The resulting I2C frequency is configured to fGETH = fSOURCE0 / GETHDIV for the
     * allowed configurations.
     * For GETHDIV = 0000B the clock is shut off. */
    CLK_CCUCON5_GETHDIV_WRONG =  (   -1 ),  /* Not allowed to use */
    CLK_CCUCON5_GETHDIV_0_STOP=  ( 0x0U ),  /* fGETH is stopped */
    CLK_CCUCON5_GETHDIV_1     =  ( 0x1U ),  /* fGETH = fSOURCE0 */
    CLK_CCUCON5_GETHDIV_2     =  ( 0x2U ),  /* fGETH = fSOURCE0 / 2 */
    CLK_CCUCON5_GETHDIV_3     =  ( 0x3U ),  /* fGETH = fSOURCE0 / 3 */
    CLK_CCUCON5_GETHDIV_4     =  ( 0x4U ),  /* fGETH = fSOURCE0 / 4 */
    /* E is reserved, do not use this combination */
    /* E is reserved, do not use this combination */
    /* 7 is reserved, do not use this combination */
    /* E is reserved, do not use this combination */
    /* 9 is reserved, do not use this combination */
    /* E is reserved, do not use this combination */
    /* B is reserved, do not use this combination */
    /* C is reserved, do not use this combination */
    /* D is reserved, do not use this combination */
    /* E is reserved, do not use this combination */
    /* F is reserved, do not use this combination */
} Clk_CcuCon5_GETHDivValueType;

typedef enum Clk_CcuCon5_McanhDivValueType_e
{
    /* CCUCON5.B.MCANHDIV value (=MCANH Divider Reload Value)
     * The resulting ADAS frequency is configured to fMCANH = fSOURCE0 / MCANHDIV for the
     * allowed configurations.
     * For MCANHDIV = 0000B the clock is shut off. */
    CLK_CCUCON5_MCANHDIV_WRONG  =  ( -1 ),    /* Not allowed to use */
    CLK_CCUCON5_MCANHDIV_0_STOP =  ( 0x0U ),  /* fMCANH is stopped */
    CLK_CCUCON5_MCANHDIV_1      =  ( 0x1U ),  /* fMCANH = fSOURCE0 */
    CLK_CCUCON5_MCANHDIV_2      =  ( 0x2U ),  /* fMCANH = fSOURCE0 / 2 */
    CLK_CCUCON5_MCANHDIV_3      =  ( 0x3U ),  /* fMCANH = fSOURCE0 / 3 */
    CLK_CCUCON5_MCANHDIV_4      =  ( 0x4U ),  /* fMCANH = fSOURCE0 / 4 */
    CLK_CCUCON5_MCANHDIV_5      =  ( 0x5U ),  /* fMCANH = fSOURCE0 / 5 */
    CLK_CCUCON5_MCANHDIV_6      =  ( 0x6U ),  /* fMCANH = fSOURCE0 / 6 */
    /* 7 is reserved, do not use this combination */
    CLK_CCUCON5_MCANHDIV_8      =  ( 0x8U ),  /* fMCANH = fSOURCE0 / 8 */
    /* 9 is reserved, do not use this combination */
    CLK_CCUCON5_MCANHDIV_10     =  ( 0xAU ),  /* fMCANH = fSOURCE0 / 10 */
    /* B is reserved, do not use this combination */
    CLK_CCUCON5_MCANHDIV_12     =  ( 0xCU ),  /* fMCANH = fSOURCE0 / 12 */
    /* D is reserved, do not use this combination */
    /* D is reserved, do not use this combination */
    CLK_CCUCON5_MCANHDIV_15     =  ( 0xFU )   /* fMCANH = fSOURCE0 / 15 */
} Clk_CcuCon5_McanhDivValueType;

typedef enum Clk_CcuCon5_AdasDivValueType_e
{
    /* CCUCON5.B.ADASDIV value (=ADAS Divider Reload Value)
     * The resulting ADAS frequency is configured to fADAS = fSOURCE0 / ADASDIV for the
     * allowed configurations.
     * For ADASDIV = 0000B the clock is shut off. */
    CLK_CCUCON5_ADASDIV_WRONG  =  ( -1 ),    /* Not allowed to use */
    CLK_CCUCON5_ADASDIV_0_STOP =  ( 0x0U ),  /* fADAS is stopped */
    CLK_CCUCON5_ADASDIV_1      =  ( 0x1U ),  /* fADAS = fSOURCE0 */
    CLK_CCUCON5_ADASDIV_2      =  ( 0x2U ),  /* fADAS = fSOURCE0 / 2 */
    CLK_CCUCON5_ADASDIV_3      =  ( 0x3U ),  /* fADAS = fSOURCE0 / 3 */
    CLK_CCUCON5_ADASDIV_4      =  ( 0x4U ),  /* fADAS = fSOURCE0 / 4 */
    CLK_CCUCON5_ADASDIV_5      =  ( 0x5U ),  /* fADAS = fSOURCE0 / 5 */
    CLK_CCUCON5_ADASDIV_6      =  ( 0x6U ),  /* fADAS = fSOURCE0 / 6 */
    /* 7 is reserved, do not use this combination */
    CLK_CCUCON5_ADASDIV_8      =  ( 0x8U ),  /* fADAS = fSOURCE0 / 8 */
    /* 9 is reserved, do not use this combination */
    CLK_CCUCON5_ADASDIV_10     =  ( 0xAU ),  /* fADAS = fSOURCE0 / 10 */
    /* B is reserved, do not use this combination */
    CLK_CCUCON5_ADASDIV_12     =  ( 0xCU ),  /* fADAS = fSOURCE0 / 12 */
    /* D is reserved, do not use this combination */
    CLK_CCUCON5_ADASDIV_14     =  ( 0xCU ),  /* fADAS = fSOURCE0 / 12 - see TS p1059 */
    CLK_CCUCON5_ADASDIV_15     =  ( 0xFU )   /* fADAS = fSOURCE0 / 15 */
} Clk_CcuCon5_AdasDivValueType;

typedef enum Clk_CcuCon5_UpType_e
{
    /* Update Request */
    /* Setting this bit will request an update for CCUCON0 and CCUCON5. Only
     * one UP bit must be set either CCUCON0 or CCUCON5. This bit always
     * reads as zero. */
    CLK_CCUCON5_UP_NO_ACTION       =  ( 0x0U ), /* No action */
    CLK_CCUCON5_UP_UPDATE_REQUEST  =  ( 0x1U )  /* A new complete parameter set is
                                                 * transferred to the CCU defined by
                                                 * register CCUCON0 and CCUCON5. */
} Clk_CcuCon5_UpType;

typedef enum Clk_CcuCon5_LckType_e
{
    /* Update Request */
    /* This bit indicates if the register can be updated with a new value or if the
     * register is locked and a write action from the bus side has no effect.
     * Note: The lock bit is set when an update of CCUCON0/5 has been
     *       requested, and released when the update is complete. */
    CLK_CCUCON5_LCK_REG_UNLOCKED =  ( 0x0U ), /* The register is unlocked and can be updated */
    CLK_CCUCON5_LCK_REG_LOCKED   =  ( 0x1U )  /* The register is locked and can not be updated */
} Clk_CcuCon5_LckType;

/********************************************
 * A2G CCU Clock Control CCUCON6-11
 ********************************************/
/* Clock Divider for Core 0 - 5 */
typedef enum Clk_CcuConX_CpuDivValueType_e
{
    /* CCUCONX.B.CPUXDIV value
     * fCPUX = fSRI * (64 - CPUXDIV) / 64
     * For CPUXDIV = 0000B the clock fCPUX = fSRI. */
    CLK_CCUCONX_CPUDIV_WRONG  =  ( -1 ),    /* Not allowed to use */
    CLK_CCUCONX_CPUDIV_MIN    =  ( 0x0U ),
    CLK_CCUCONX_CPUDIV_MAX    =  ( 0x63U ),

    CLK_CCUCONX_CPUDIV_0      =  ( 0x0U ),  /* fCPUX = fSRI */
    CLK_CCUCONX_CPUDIV_1,
    CLK_CCUCONX_CPUDIV_2,
    CLK_CCUCONX_CPUDIV_3,
    CLK_CCUCONX_CPUDIV_4,
    CLK_CCUCONX_CPUDIV_5,
    CLK_CCUCONX_CPUDIV_6,
    CLK_CCUCONX_CPUDIV_7,
    CLK_CCUCONX_CPUDIV_8,
    CLK_CCUCONX_CPUDIV_9,
    CLK_CCUCONX_CPUDIV_10,
    CLK_CCUCONX_CPUDIV_11,
    CLK_CCUCONX_CPUDIV_12,
    CLK_CCUCONX_CPUDIV_13,
    CLK_CCUCONX_CPUDIV_14,
    CLK_CCUCONX_CPUDIV_15,
    CLK_CCUCONX_CPUDIV_16,
    CLK_CCUCONX_CPUDIV_17,
    CLK_CCUCONX_CPUDIV_18,
    CLK_CCUCONX_CPUDIV_19,
    CLK_CCUCONX_CPUDIV_20,
    CLK_CCUCONX_CPUDIV_21,
    CLK_CCUCONX_CPUDIV_22,
    CLK_CCUCONX_CPUDIV_23,
    CLK_CCUCONX_CPUDIV_24,
    CLK_CCUCONX_CPUDIV_25,
    CLK_CCUCONX_CPUDIV_26,
    CLK_CCUCONX_CPUDIV_27,
    CLK_CCUCONX_CPUDIV_28,
    CLK_CCUCONX_CPUDIV_29,
    CLK_CCUCONX_CPUDIV_30,
    CLK_CCUCONX_CPUDIV_31,
    CLK_CCUCONX_CPUDIV_32,
    CLK_CCUCONX_CPUDIV_33,
    CLK_CCUCONX_CPUDIV_34,
    CLK_CCUCONX_CPUDIV_35,
    CLK_CCUCONX_CPUDIV_36,
    CLK_CCUCONX_CPUDIV_37,
    CLK_CCUCONX_CPUDIV_38,
    CLK_CCUCONX_CPUDIV_39,
    CLK_CCUCONX_CPUDIV_40,
    CLK_CCUCONX_CPUDIV_41,
    CLK_CCUCONX_CPUDIV_42,
    CLK_CCUCONX_CPUDIV_43,
    CLK_CCUCONX_CPUDIV_44,
    CLK_CCUCONX_CPUDIV_45,
    CLK_CCUCONX_CPUDIV_46,
    CLK_CCUCONX_CPUDIV_47,
    CLK_CCUCONX_CPUDIV_48,
    CLK_CCUCONX_CPUDIV_49,
    CLK_CCUCONX_CPUDIV_50,
    CLK_CCUCONX_CPUDIV_51,
    CLK_CCUCONX_CPUDIV_52,
    CLK_CCUCONX_CPUDIV_53,
    CLK_CCUCONX_CPUDIV_54,
    CLK_CCUCONX_CPUDIV_55,
    CLK_CCUCONX_CPUDIV_56,
    CLK_CCUCONX_CPUDIV_57,
    CLK_CCUCONX_CPUDIV_58,
    CLK_CCUCONX_CPUDIV_59,
    CLK_CCUCONX_CPUDIV_60,
    CLK_CCUCONX_CPUDIV_61,
    CLK_CCUCONX_CPUDIV_62,
    CLK_CCUCONX_CPUDIV_63
} Clk_CcuConX_CpuDivValueType;

/********************************************
 * A2G CCU Clock Control OSCCON
********************************************/
typedef enum Clk_OscCon_PllLvValueType_e
{
    /* This bit indicates if the frequency output fosc of the oscillator is above the
       lower threshold frequency fLV, i.e. usable for the DCO part of the PLL. This
       is checked by the Oscillator Watchdog of the PLL using fBACK. */
    CLK_OSCCON_PLLLV_FOSC_NOT_USEABLE  =  ( 0x0U ), /* The OSC frequency is not usable. Frequency fOSC is too low. */
    CLK_OSCCON_PLLLV_FOSC_USABLE       =  ( 0x1U )  /* The OSC frequency is usable */

} Clk_OscCon_PllLvValueType;

typedef enum Clk_OscCon_OscResValueType_e
{
    /* Oscillator Watchdog Reset */
    CLK_OSCCON_OSCRES_NOT_CLEARED  =  ( 0x0U ), /* The Oscillator Watchdog of the PLL is not
                                                      cleared and remains active */
    CLK_OSCCON_OSCRES_RESTART      =  ( 0x1U )  /* The Oscillator Watchdog of the PLL is
                                                       cleared and restarted */
} Clk_OscCon_OscResValueType;

typedef enum Clk_OscCon_ModeValueType_e
{
    /* Oscillator Mode
       This bit field defines which mode can be used and if the oscillator
       entered the Power-Saving Mode or not. */
    CLK_OSCCON_MODE_EXT_CRYSTAL_POWERSAVING_OFF  =  ( 0x0U ), /* External Crystal / Ceramic Resonator Mode and External Input
                                                                    Clock Mode. The oscillator Power-Saving Mode is not entered. */
    CLK_OSCCON_MODE_OSC_DISABLE_POWERSAVING_OFF  =  ( 0x1U ), /* OSC is disabled. The oscillator Power-Saving Mode is not entered. */
    CLK_OSCCON_MODE_EXT_CRYSTAL_POWERSAVING_ON   =  ( 0x2U ), /* External Input Clock Mode and the oscillator Power-Saving Mode is entered */
    CLK_OSCCON_MODE_OSC_DISABLE_POWERSAVING_ON   =  ( 0x3U )  /* OSC is disabled. The oscillator Power-Saving Mode is entered. */

} Clk_OscCon_ModeValueType;

typedef enum Clk_OscCon_PllHvValueType_e
{
  /* This bit indicates if the frequency output fosc of the oscillator is above the
     lower threshold frequency fLV, i.e. usable for the DCO part of the PLL. This
     is checked by the Oscillator Watchdog of the PLL using fBACK. */
    CLK_OSCCON_PLLHV_FOSC_NOT_USEABLE  =  ( 0x0U ), /* The OSC frequency is not usable. Frequency fOSC is too high. */
    CLK_OSCCON_PLLHV_FOSC_USABLE       =  ( 0x1U )  /* The OSC frequency is usable */

} Clk_OscCon_PllHvValueType;


/********************************************/
/* A2G CCU Clock Control */
/********************************************/
typedef enum Clk_SelectedSource_e
{
    CLK_CLOCKSOURCE_FBACK = 0, /* Default = EVR clock output, can not disabled */
    CLK_CLOCKSOURCE_FBACK_HALF,
    CLK_CLOCKSOURCE_FBACK_PLL,
    CLK_CLOCKSOURCE_FBACK_PLL_HALF,
    CLK_CLOCKSOURCE_FOSC0,
    CLK_CLOCKSOURCE_FOSC0_HALF,
    CLK_CLOCKSOURCE_SYSCLK, /* External Port Pin Clock Input */
    CLK_CLOCKSOURCE_SYSCLK_HALF,
    CLK_CLOCKSOURCE_FPLL0,
    CLK_CLOCKSOURCE_FPLL1,
    CLK_CLOCKSOURCE_FPLL2,
    CLK_CLOCKSOURCE_FSOURCE0,
    CLK_CLOCKSOURCE_FSOURCE1,
    CLK_CLOCKSOURCE_FSOURCE2,
    CLK_CLOCKSOURCE_FSOURCE1_HALF,
    CLK_CLOCKSOURCE_FHSCT,
    CLK_CLOCKSOURCE_FAILURE = 0xFF
} Clk_SelectedSourceType;

/*******************************************************
 * A2G CCU Clock Control Configuration type declaration
 *******************************************************/

typedef float32 Clk_clockFrequencyType; /* Hz */

typedef enum Clk_RampUp_e
{
    kStartValue = 0,
    kStep1,
    kStep2,
    kStep3
} Clk_RampUpType;

/* Structure to configure Ccucon[i] register [i = 6...11 : for Cpu0...Cpu5] */
typedef struct Clk_Scu_CcuConXType_s
{
    /* CPU0 */
    Ifx_SCU_CCUCON6  configCCUCON6;
    #if ( MCAL_NO_OF_CORES > 1U )
    /* CPU1 */
    Ifx_SCU_CCUCON7  configCCUCON7;
    #if ( MCAL_NO_OF_CORES > 2U )
    /* CPU2 */
    Ifx_SCU_CCUCON8  configCCUCON8;
    #if ( MCAL_NO_OF_CORES > 3U )
    /* CPU3 */
    Ifx_SCU_CCUCON9  configCCUCON9;
    #if ( MCAL_NO_OF_CORES > 4U )
    /* CPU4 */
    Ifx_SCU_CCUCON10 configCCUCON10;
    #if ( MCAL_NO_OF_CORES > 5U )
    /* CPU5 */
    Ifx_SCU_CCUCON11 configCCUCON11;
    #endif /* END of ( MCAL_NO_OF_CORES > 5U ) */
    #endif /* END of ( MCAL_NO_OF_CORES > 4U ) */
    #endif /* END of ( MCAL_NO_OF_CORES > 3U ) */
    #endif /* END of ( MCAL_NO_OF_CORES > 2U ) */
    #endif /* END of ( MCAL_NO_OF_CORES > 1U ) */
} Clk_Scu_CcuConXType;

/* Clk_PllDistributionConfigType structure is used to store the PLL distribution
 * configuration. */
typedef struct Clk_PllDistributionConfigType_s
{
    /* Clock select and clock configuration for STM, GTM, SRI, SPB, BBB, FSI, FSI2 and LPDIV */
    Ifx_SCU_CCUCON0  configCCUCON0;

    /* Clock configuration for QSPI, MSC, MCAN, I2C */
    Ifx_SCU_CCUCON1  configCCUCON1;

    /* Clock configuration for ASCLIN and Power Safe Switch for EBU, ERAY, HSPDM */
    Ifx_SCU_CCUCON2  configCCUCON2;

    /* Clock Monitor and test register for PLL0-2, SPB, Backup */
    Ifx_SCU_CCUCON3  configCCUCON3;

    /* Clock Monitor, test and threshold register for fBackup */
    Ifx_SCU_CCUCON4  configCCUCON4;

    /* Clock configuration for GETH, MCANH and ADAS */
    Ifx_SCU_CCUCON5  configCCUCON5;

    /* CPUX Clock Configuration */
    Clk_Scu_CcuConXType configCores[MCAL_NO_OF_CORES];
} Clk_PllDistributionConfigType;

/* \brief Configuration structure type for the Pll Steps for current jump control.  */
typedef struct Clk_PllStepConfigType_s
{
    Clk_SysPllCon1_K2DivValueType   k2DivStep;      /**< \brief K2 divider value for this step. */
    float32                         waitTime;       /**< \brief Wait time for for this step.    */
} Clk_PllStepConfigType;

/* Structure definition of Clk_SystemPllConfigType is used to store the system PLL configuration. */
typedef struct Clk_SystemPllConfigType_s
{
    Clk_SysPllCon0_InSelStateType insel;               /* Input source for both PLLs             */
    Clk_SysPllCon0_PDivValueType  sysPllPDiv;          /* P-Div value for system PLL             */
    Clk_SysPllCon0_NDivValueType  sysPllNDiv;          /* N-Div value for system PLL             */
    const Clk_PllStepConfigType   *sysPllK2Div;        /* K2-Div value for system PLL            */
    Clk_SysPllCon0_ModEnStateType fmPllEn;             /* FM system PLL selection                */
    Clk_SysPllCon2_ModcfgType     modulationAmplitude; /* Modulation amplitude for FM system PLL */
    uint16 	                       numberOfKSteps;      /* Number of necessary k ramp up steps    */
} Clk_SystemPllConfigType;

/* Structure definition Clk_PeripheralPllConfigType is used to store the peripheral PLL configuration. */
typedef struct Clk_PeripheralPllConfigType_s
{
    Clk_PerPllCon0_PDivValueType  perPllPDiv;          /* P-Div value for peripheral PLL       */
    Clk_PerPllCon0_NDivValueType  perPllNDiv;          /* N-Div value for peripheral PLL       */
    Clk_PerPllCon1_K2DivType      perPllK2Div;         /* K2-Div value for peripheral PLL      */
    Clk_PerPllCon1_K3DivType      perPllK3Div;         /* K3-Div value for peripheral PLL      */
    Clk_PerPllCon0_DivByStateType perPllK3DivBypass;   /* Switch to enable K3 divider bypass   */
    uint16 	                       numberOfK2Steps;     /* Number of necessary k2 ramp up steps */
    uint16 	                       numberOfK3Steps;     /* Number of necessary k3 ramp up steps */
} Clk_PeripheralPllConfigType;

/* Structure definition for Clk driver to setup the clock divider for each core separately */
typedef struct Clk_CpuXConfigType_s
{
    Clk_CcuConX_CpuDivValueType   cpu0Div; /* CPU0 Divider to generate fCPU0 */
    Clk_CcuConX_CpuDivValueType   cpu1Div; /* CPU1 Divider to generate fCPU1 */
    Clk_CcuConX_CpuDivValueType   cpu2Div; /* CPU2 Divider to generate fCPU2 */
    Clk_CcuConX_CpuDivValueType   cpu3Div; /* CPU3 Divider to generate fCPU3 */
    Clk_CcuConX_CpuDivValueType   cpu4Div; /* CPU4 Divider to generate fCPU4 */
    Clk_CcuConX_CpuDivValueType   cpu5Div; /* CPU5 Divider to generate fCPU5 */
} Clk_CpuXConfigType;

/* Structure definition Clk_ClockConfigType is used to store the clock configuration data
 * of the Clk Driver */
typedef struct Clk_ClockConfigType_s
{
    /* Variable to store System PLL Configuration incl. ramp up and down values for k2 */
    Clk_SystemPllConfigType              SystemPllCfg;

    /* Variable to store Peripheral PLL Configuration incl. ramp up and down values for k2 and k3 */
    Clk_PeripheralPllConfigType          PeripheralPllCfg;

    /* Pointer to PLL Distribution configuration */
    const Clk_PllDistributionConfigType *PllDistributionCfgPtr;

    /* Variable to store External Clock Frequency */
    Clk_clockFrequencyType               externalClockSourceFreq;

    /* KDIV values to output fBACKUP from both PLLs */
    Clk_SysPllCon1_K2DivValueType        k2DivForPllEqualBackupFreq;
} Clk_ClockConfigType;



#endif /* CLK_TYPES_H */

/* EOF */
