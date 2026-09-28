/******************************************************************************/
/*                                                                            */
/* !Layer           : SRV                                                     */
/*                                                                            */
/* !Component       : FAULT                                                   */
/* !Description     :                                                         */
/*                                                                            */
/* !File            : FAULT_FF_Drv.h                                          */
/*                                                                            */
/* !Scope           : Public                                                  */
/*                                                                            */
/* !Target          : All                                                     */
/*                                                                            */
/* !Vendor          : invt                                                    */
/*                                                                            */
/* Coding language  : C                                                       */
/*                                                                            */
/* COPYRIGHT 2011 invt                                                        */
/* all rights reserved                                                        */
/*                                                                            */
/******************************************************************************/
/* SVN Information                                                           */
/* $Archive:                                                                 $*/
/* $Revision::            $$Author::                  $$Date::               $*/
/******************************************************************************/

#ifndef FAULT_FF_DRV_H
#define FAULT_FF_DRV_H

#include "Std_Types.h"


/******************************************************************************/
/* PROTOTYPE DECLARATION                                                      */
/******************************************************************************/

/******************************************************************************/
/* DEFINE                                                                     */
/******************************************************************************/

/******************************************************************************/
/* DEFINE MACRO FUNCTIONS                                                     */
/******************************************************************************/
#define FAULT_vidSetFreezeFrameItem(snFF_Id, snItem_Id, udtValue)              \
        if (FAULT_FF_bFrameLock_##snFF_Id == FALSE)                            \
        {                                                                      \
           FAULT_vidSetFFItem_##snFF_Id##_##snItem_Id(udtValue);               \
        }                                                                      \

#define FAULT_vidLockFreezeFrame(snFF_Id)                                      \
        FAULT_FF_bFrameLock_##snFF_Id = TRUE                                   \

#define FAULT_vidUnLockFreezeFrame(snFF_Id)                                    \
        FAULT_FF_bFrameLock_##snFF_Id = FALSE                                  \

#define FAULT_udtReadFreezeFrameItem(snFF_Id, snItem_Id)                       \
        FAULT_FF_Frame_##snFF_Id.Item.snItem_Id                                \

#define FAULT_vidWriteFreezeFrameItem(snFF_Id, snItem_Id, udtValue)            \
        FAULT_FF_Frame_##snFF_Id.Item.snItem_Id = udtValue                     \

#define FAULT_udtDataScaling(udtValue, SrcCoefA, SrcCoefB, DestCoefA, DestCoefB) \
        udtValue                                                               \

/******************************************************************************/
/* FILTER UNQUEUED MACRO FUNCTIONS                                            */
/******************************************************************************/
#define FAULT_FIL_UQ_ALWAYS(snFF_Id, snItem_Id, udtValue)                      \
        FAULT_FF_Frame_##snFF_Id.Item.snItem_Id = udtValue                     \

/******************************************************************************/
#define FAULT_FIL_UQ_NEVER(snFF_Id, snItem_Id, udtValue)                       \

/******************************************************************************/
#define FAULT_FIL_UQ_NEWEQUALSX(snFF_Id, snItem_Id, udtValue, udtXValue)       \
        if (udtValue == udtXValue)                                             \
        {                                                                      \
           FAULT_FIL_UQ_ALWAYS(snFF_Id, snItem_Id, udtValue);                  \
        }                                                                      \

/******************************************************************************/
#define FAULT_FIL_UQ_NEWDIFFERSX(snFF_Id, snItem_Id, udtValue, udtXValue)      \
        if (udtValue != udtXValue)                                             \
        {                                                                      \
           FAULT_FIL_UQ_ALWAYS(snFF_Id, snItem_Id, udtValue);                  \
        }                                                                      \

/******************************************************************************/
#define FAULT_FIL_UQ_NEWGREATERX(snFF_Id, snItem_Id, udtValue, udtXValue)      \
        if (udtValue > udtXValue)                                              \
        {                                                                      \
           FAULT_FIL_UQ_ALWAYS(snFF_Id, snItem_Id, udtValue);                  \
        }                                                                      \

/******************************************************************************/
#define FAULT_FIL_UQ_NEWGREATEROREQUALX(snFF_Id, snItem_Id, udtValue, udtXValue)     \
        if (udtValue >= udtXValue)                                             \
        {                                                                      \
           FAULT_FIL_UQ_ALWAYS(snFF_Id, snItem_Id, udtValue);                  \
        }                                                                      \

/******************************************************************************/
#define FAULT_FIL_UQ_NEWLESSX(snFF_Id, snItem_Id, udtValue, udtXValue)         \
        if (udtValue < udtXValue)                                              \
        {                                                                      \
           FAULT_FIL_UQ_ALWAYS(snFF_Id, snItem_Id, udtValue);                  \
        }                                                                      \

/******************************************************************************/
#define FAULT_FIL_UQ_NEWLESSOREQUALX(snFF_Id, snItem_Id, udtValue, udtXValue)  \
        if (udtValue <= udtXValue)                                             \
        {                                                                      \
           FAULT_FIL_UQ_ALWAYS(snFF_Id, snItem_Id, udtValue);                  \
        }                                                                      \

/******************************************************************************/
#define FAULT_FIL_UQ_NEWISWITHIN(snFF_Id, snItem_Id, udtValue, udtMinValue, udtMaXValue)\
        if ((udtMinValue < udtValue) && (udtValue < udtMaXValue))              \
        {                                                                      \
           FAULT_FIL_UQ_ALWAYS(snFF_Id, snItem_Id, udtValue);                  \
        }                                                                      \

/******************************************************************************/
#define FAULT_FIL_UQ_NEWISOUTSIDE(snFF_Id, snItem_Id, udtValue, udtMinValue, udtMaXValue) \
        if ((udtValue < udtMinValue) || (udtMaXValue < udtValue))              \
        {                                                                      \
           FAULT_FIL_UQ_ALWAYS(snFF_Id, snItem_Id, udtValue);                  \
        }                                                                      \

/******************************************************************************/
#define FAULT_FIL_UQ_NEWISEQUAL(snFF_Id, snItem_Id, udtValue)                  \
        if (udtValue == FAULT_FF_Frame_##snFF_Id.Item.snItem_Id##)             \
        {                                                                      \
           FAULT_FIL_UQ_ALWAYS(snFF_Id, snItem_Id, udtValue);                  \
        }                                                                      \

/******************************************************************************/
#define FAULT_FIL_UQ_NEWISDIFFERS(snFF_Id, snItem_Id, udtValue)                \
        if (udtValue != FAULT_FF_Frame_##snFF_Id.Item.snItem_Id##)             \
        {                                                                      \
           FAULT_FIL_UQ_ALWAYS(snFF_Id, snItem_Id, udtValue);                  \
        }                                                                      \

/******************************************************************************/
#define FAULT_FIL_UQ_NEWISGREATER(snFF_Id, snItem_Id, udtValue)                \
        if (udtValue > FAULT_FF_Frame_##snFF_Id.Item.snItem_Id##)              \
        {                                                                      \
           FAULT_FIL_UQ_ALWAYS(snFF_Id, snItem_Id, udtValue);                  \
        }                                                                      \

/******************************************************************************/
#define FAULT_FIL_UQ_NEWISGREATEROREQUAL(snFF_Id, snItem_Id, udtValue)         \
        if (udtValue >= FAULT_FF_Frame_##snFF_Id.Item.snItem_Id##)             \
        {                                                                      \
           FAULT_FIL_UQ_ALWAYS(snFF_Id, snItem_Id, udtValue);                  \
        }

/******************************************************************************/
#define FAULT_FIL_UQ_NEWISLESS(snFF_Id, snItem_Id, udtValue)                   \
        if (udtValue < FAULT_FF_Frame_##snFF_Id.Item.snItem_Id##)              \
        {                                                                      \
           FAULT_FIL_UQ_ALWAYS(snFF_Id, snItem_Id, udtValue);                  \
        }

/******************************************************************************/
#define FAULT_FIL_UQ_NEWISLESSOREQUAL(snFF_Id, snItem_Id, udtValue)            \
        if (udtValue <= FAULT_FF_Frame_##snFF_Id.Item.snItem_Id##)             \
        {                                                                      \
           FAULT_FIL_UQ_ALWAYS(snFF_Id, snItem_Id, udtValue);                  \
        }


/******************************************************************************/
/* FILTER QUEUED MACRO FUNCTIONS                                              */
/******************************************************************************/
#define FAULT_FIL_Q_ALWAYS(snFF_Id, snItem_Id, udtValue)                       \
        for (FAULT_u8##snFF_Id##_##snItem_Id##_QIdx = FAULT_##snFF_Id##_##snItem_Id##_QLEN - 1; \
             FAULT_u8##snFF_Id##_##snItem_Id##_QIdx > 0;                       \
             FAULT_u8##snFF_Id##_##snItem_Id##_QIdx--)                         \
        {                                                                      \
            FAULT_FF_Frame_##snFF_Id.Item.snItem_Id[FAULT_u8##snFF_Id##_##snItem_Id##_QIdx] \
            = FAULT_FF_Frame_##snFF_Id.Item.snItem_Id[FAULT_u8##snFF_Id##_##snItem_Id##_QIdx-1]; \
        }                                                                      \
        FAULT_FF_Frame_##snFF_Id.Item.snItem_Id[0] = udtValue;                 \

/******************************************************************************/
#define FAULT_FIL_Q_NEVER(snFF_Id, snItem_Id, udtValue)                        \

/******************************************************************************/
#define FAULT_FIL_Q_NEWEQUALSX(snFF_Id, snItem_Id, udtValue, udtXValue)        \
        if (udtValue == udtXValue)                                             \
        {                                                                      \
           FAULT_FIL_Q_ALWAYS(snFF_Id, snItem_Id, udtValue);                   \
        }                                                                      \

/******************************************************************************/
#define FAULT_FIL_Q_NEWDIFFERSX(snFF_Id, snItem_Id, udtValue, udtXValue)       \
        if (udtValue != udtXValue)                                             \
        {                                                                      \
           FAULT_FIL_Q_ALWAYS(snFF_Id, snItem_Id, udtValue);                   \
        }                                                                      \

/******************************************************************************/
#define FAULT_FIL_Q_NEWGREATERX(snFF_Id, snItem_Id, udtValue, udtXValue)       \
        if (udtValue > udtXValue)                                              \
        {                                                                      \
           FAULT_FIL_Q_ALWAYS(snFF_Id, snItem_Id, udtValue);                   \
        }                                                                      \

/******************************************************************************/
#define FAULT_FIL_Q_NEWGREATEROREQUALX(snFF_Id, snItem_Id, udtValue, udtXValue)\
        if (udtValue >= udtXValue)                                             \
        {                                                                      \
           FAULT_FIL_Q_ALWAYS(snFF_Id, snItem_Id, udtValue);                   \
        }                                                                      \

/******************************************************************************/
#define FAULT_FIL_Q_NEWLESSX(snFF_Id, snItem_Id, udtValue, udtXValue)          \
        if (udtValue < udtXValue)                                              \
        {                                                                      \
           FAULT_FIL_Q_ALWAYS(snFF_Id, snItem_Id, udtValue);                   \
        }                                                                      \

/******************************************************************************/
#define FAULT_FIL_Q_NEWLESSOREQUALX(snFF_Id, snItem_Id, udtValue, udtXValue)   \
        if (udtValue <= udtXValue)                                             \
        {                                                                      \
           FAULT_FIL_Q_ALWAYS(snFF_Id, snItem_Id, udtValue);                   \
        }                                                                      \

/******************************************************************************/
#define FAULT_FIL_Q_NEWISWITHIN(snFF_Id, snItem_Id, udtValue, udtMinValue, udtMaXValue) \
        if ((udtMinValue < udtValue) && (udtValue < udtMaXValue))              \
        {                                                                      \
           FAULT_FIL_Q_ALWAYS(snFF_Id, snItem_Id, udtValue);                   \
        }                                                                      \

/******************************************************************************/
#define FAULT_FIL_Q_NEWISOUTSIDE(snFF_Id, snItem_Id, udtValue, udtMinValue, udtMaXValue)\
        if ((udtValue < udtMinValue) || (udtMaXValue < udtValue))              \
        {                                                                      \
           FAULT_FIL_Q_ALWAYS(snFF_Id, snItem_Id, udtValue);                   \
        }                                                                      \

/******************************************************************************/
#define FAULT_FIL_Q_NEWISEQUAL(snFF_Id, snItem_Id, udtValue)                   \
        if (udtValue == FAULT_FF_Frame_##snFF_Id.Item.snItem_Id[0])            \
        {                                                                      \
           FAULT_FIL_Q_ALWAYS(snFF_Id, snItem_Id, udtValue);                   \
        }                                                                      \

/******************************************************************************/
#define FAULT_FIL_Q_NEWISDIFFERS(snFF_Id, snItem_Id, udtValue)                 \
        if (udtValue != FAULT_FF_Frame_##snFF_Id.Item.snItem_Id[0])            \
        {                                                                      \
           FAULT_FIL_Q_ALWAYS(snFF_Id, snItem_Id, udtValue);                   \
        }                                                                      \

/******************************************************************************/
#define FAULT_FIL_Q_NEWISGREATER(snFF_Id, snItem_Id, udtValue)                 \
        if (udtValue > FAULT_FF_Frame_##snFF_Id.Item.snItem_Id[0])             \
        {                                                                      \
           FAULT_FIL_Q_ALWAYS(snFF_Id, snItem_Id, udtValue);                   \
        }                                                                      \

/******************************************************************************/
#define FAULT_FIL_Q_NEWISGREATEROREQUAL(snFF_Id, snItem_Id, udtValue)          \
        if (udtValue >= FAULT_FF_Frame_##snFF_Id.Item.snItem_Id[0])            \
        {                                                                      \
           FAULT_FIL_Q_ALWAYS(snFF_Id, snItem_Id, udtValue);                   \
        }                                                                      \

/******************************************************************************/
#define FAULT_FIL_Q_NEWISLESS(snFF_Id, snItem_Id, udtValue)                    \
        if (udtValue < FAULT_FF_Frame_##snFF_Id.Item.snItem_Id[0])             \
        {                                                                      \
           FAULT_FIL_Q_ALWAYS(snFF_Id, snItem_Id, udtValue);                   \
        }                                                                      \

/******************************************************************************/
#define FAULT_FIL_Q_NEWISLESSOREQUAL(snFF_Id, snItem_Id, udtValue)             \
        if (udtValue <= FAULT_FF_Frame_##snFF_Id.Item.snItem_Id[0])            \
        {                                                                      \
           FAULT_FIL_Q_ALWAYS(snFF_Id, snItem_Id, udtValue);                   \
        }                                                                      \


/******************************************************************************/
/* FILTER QUEUED MACRO FUNCTIONS                                              */
/******************************************************************************/
#define FAULT_FIL_TS_ALWAYS(snFF_Id, snItem_Id, udtValue)                      \
        FAULT_FF_Frame_##snFF_Id.Item.snItem_Id =                              \
                                 FAULT_FF_Frame_##snFF_Id.Item.snItem_Id## + 1 \

/******************************************************************************/
#define FAULT_FIL_TS_NEVER(snFF_Id, snItem_Id, udtValue)

/******************************************************************************/
#define FAULT_FIL_TS_NEWEQUALSX(snFF_Id, snItem_Id, udtValue, udtXValue)       \
        if (udtValue == udtXValue)                                             \
        {                                                                      \
           FAULT_FIL_TS_ALWAYS(snFF_Id, snItem_Id, udtValue);                  \
        }                                                                      \

/******************************************************************************/
#define FAULT_FIL_TS_NEWDIFFERSX(snFF_Id, snItem_Id, udtValue, udtXValue)      \
        if (udtValue != udtXValue)                                             \
        {                                                                      \
           FAULT_FIL_TS_ALWAYS(snFF_Id, snItem_Id, udtValue);                  \
        }                                                                      \

/******************************************************************************/
#define FAULT_FIL_TS_NEWGREATERX(snFF_Id, snItem_Id, udtValue, udtXValue)      \
        if (udtValue > udtXValue)                                              \
        {                                                                      \
           FAULT_FIL_TS_ALWAYS(snFF_Id, snItem_Id, udtValue);                  \
        }                                                                      \

/******************************************************************************/
#define FAULT_FIL_TS_NEWGREATEROREQUALX(snFF_Id, snItem_Id, udtValue, udtXValue)     \
        if (udtValue >= udtXValue)                                             \
        {                                                                      \
           FAULT_FIL_TS_ALWAYS(snFF_Id, snItem_Id, udtValue);                  \
        }                                                                      \

/******************************************************************************/
#define FAULT_FIL_TS_NEWLESSX(snFF_Id, snItem_Id, udtValue, udtXValue)         \
        if (udtValue < udtXValue)                                              \
        {                                                                      \
           FAULT_FIL_TS_ALWAYS(snFF_Id, snItem_Id, udtValue);                  \
        }                                                                      \

/******************************************************************************/
#define FAULT_FIL_TS_NEWLESSOREQUALX(snFF_Id, snItem_Id, udtValue, udtXValue)  \
        if (udtValue <= udtXValue)                                             \
        {                                                                      \
           FAULT_FIL_TS_ALWAYS(snFF_Id, snItem_Id, udtValue);                  \
        }                                                                      \

/******************************************************************************/
#define FAULT_FIL_TS_NEWISWITHIN(snFF_Id, snItem_Id, udtValue, udtMinValue, udtMaXValue)\
        if ((udtMinValue < udtValue) && (udtValue < udtMaXValue))              \
        {                                                                      \
           FAULT_FIL_TS_ALWAYS(snFF_Id, snItem_Id, udtValue);                  \
        }                                                                      \

/******************************************************************************/
#define FAULT_FIL_TS_NEWISOUTSIDE(snFF_Id, snItem_Id, udtValue, udtMinValue, udtMaXValue) \
        if ((udtValue < udtMinValue) || (udtMaXValue < udtValue))              \
        {                                                                      \
           FAULT_FIL_TS_ALWAYS(snFF_Id, snItem_Id, udtValue);                  \
        }                                                                      \

/******************************************************************************/
#define FAULT_FIL_TS_NEWISEQUAL(snFF_Id, snItem_Id, udtValue)                  \
        if (udtValue == FAULT_##snFF_Id##_##snItem_Id##_TSOld)                 \
        {                                                                      \
           FAULT_FIL_TS_ALWAYS(snFF_Id, snItem_Id, udtValue);                  \
           FAULT_##snFF_Id##_##snItem_Id##_TSOld = udtValue;                   \
        }                                                                      \

/******************************************************************************/
#define FAULT_FIL_TS_NEWISDIFFERS(snFF_Id, snItem_Id, udtValue)                \
        if (udtValue != FAULT_##snFF_Id##_##snItem_Id##_TSOld)                 \
        {                                                                      \
           FAULT_FIL_TS_ALWAYS(snFF_Id, snItem_Id, udtValue);                  \
           FAULT_##snFF_Id##_##snItem_Id##_TSOld = udtValue;                   \
        }                                                                      \

/******************************************************************************/
#define FAULT_FIL_TS_NEWISGREATER(snFF_Id, snItem_Id, udtValue)                \
        if (udtValue >  FAULT_##snFF_Id##_##snItem_Id##_TSOld)                 \
        {                                                                      \
           FAULT_FIL_TS_ALWAYS(snFF_Id, snItem_Id, udtValue);                  \
           FAULT_##snFF_Id##_##snItem_Id##_TSOld = udtValue;                   \
        }                                                                      \

/******************************************************************************/
#define FAULT_FIL_TS_NEWISGREATEROREQUAL(snFF_Id, snItem_Id, udtValue)         \
        if (udtValue >= FAULT_##snFF_Id##_##snItem_Id##_TSOld)                 \
        {                                                                      \
           FAULT_FIL_TS_ALWAYS(snFF_Id, snItem_Id, udtValue);                  \
           FAULT_##snFF_Id##_##snItem_Id##_TSOld = udtValue;                   \
        }                                                                      \

/******************************************************************************/
#define FAULT_FIL_TS_NEWISLESS(snFF_Id, snItem_Id, udtValue)                   \
        if (udtValue <  FAULT_##snFF_Id##_##snItem_Id##_TSOld)                 \
        {                                                                      \
           FAULT_FIL_TS_ALWAYS(snFF_Id, snItem_Id, udtValue);                  \
           FAULT_##snFF_Id##_##snItem_Id##_TSOld = udtValue;                   \
        }                                                                      \

/******************************************************************************/
#define FAULT_FIL_TS_NEWISLESSOREQUAL(snFF_Id, snItem_Id, udtValue)            \
        if (udtValue <= FAULT_##snFF_Id##_##snItem_Id##_TSOld)                 \
        {                                                                      \
           FAULT_FIL_Q_ALWAYS(snFF_Id, snItem_Id, udtValue);                   \
           FAULT_##snFF_Id##_##snItem_Id##_TSOld = udtValue;                   \
        }                                                                      \



/******************************************************************************/
/* DATA DECLARATION                                                           */
/******************************************************************************/
#define FAULT_START_SEC_VAR_UNSPECIFIED
#include "MemMap.h"

#define FAULT_STOP_SEC_VAR_UNSPECIFIED
#include "MemMap.h"
/******************************************************************************/
/* FUNCTIONS DECLARATION                                                      */
/******************************************************************************/
#define FAULT_START_SEC_CODE
#include "MemMap.h"


#define FAULT_STOP_SEC_CODE
#include "MemMap.h"

#endif /* FAULT_FF_DRV_H */

/*------------------------------- end of file --------------------------------*/
