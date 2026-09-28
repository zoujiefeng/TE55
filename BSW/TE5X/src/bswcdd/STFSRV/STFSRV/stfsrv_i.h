/******************************************************************************/
/*                                                                            */
/* !Layer           : SRVL                                                    */
/*                                                                            */
/* !Component       : STFSRV                                                  */
/* !Description     : StateFlow internal macros                               */
/*                                                                            */
/* !File            : STFSRV_I.H                                              */
/*                                                                            */
/* !Scope           : Public                                                  */
/*                                                                            */
/* !Target          : All                                                     */
/*                                                                            */
/* !Vendor          : invt                                                    */
/*                                                                            */
/* Coding language  : C                                                       */
/*                                                                            */
/* COPYRIGHT 2007 invt                                                        */
/* all rights reserved                                                        */
/*                                                                            */
/******************************************************************************/
/* SVN Information                                                           */
/* $Archive::   P:/DCDC_JLR/LOG/DCDC_XC2B/REF/DCDC_BSW/STFSRV_I.H_v          $*/
/* $Revision::   1.0      $$Author::            $$Date::   07 Oct 2009 $*/
/******************************************************************************/

#ifndef STFSRV_I_H
#define STFSRV_I_H

#include "Std_Types.h"
#include "stfsrv_Includes.h"
/******************************************************************************/
/* MACRO FUNCTIONS                                                            */
/******************************************************************************/


/******************************************************************************/
/*                                                                            */
/* !Description : STFSRV_vidINIT_STATEFLOW_I(snModule)                        */
/*                                                                            */
/******************************************************************************/
#define STFSRV_vidINIT_STATEFLOW_I(snModule) \
   M1_STFSRV_vidINIT_STATEFLOW_I(snModule, STFSRV_snGET_MAIN_STATEFLOW(snModule))

   #define M1_STFSRV_vidINIT_STATEFLOW_I(snModule, snStateflow) \
      M2_STFSRV_vidINIT_STATEFLOW_I(snModule, snStateflow)

   #define M2_STFSRV_vidINIT_STATEFLOW_I(snModule, snStateflow) \
      M3_STFSRV_vidINIT_STATEFLOW_I(snModule, snStateflow, STFSRV_udtGET_INIT_STATE(snModule, snStateflow))

   #define M3_STFSRV_vidINIT_STATEFLOW_I(snModule, snStateflow, snState) \
      STFSRV_vidSET_ACTIVE_STATE(snModule, snStateflow, snState)


/******************************************************************************/
/*                                                                            */
/* !Description : STFSRV_vidSET_EVENT_I(snModule, snEvent)                    */
/*                                                                            */
/******************************************************************************/
#define STFSRV_vidSET_EVENT_I(snModule, snEvent) \
   M1_STFSRV_vidSET_EVENT_I(snModule##_ON_##snEvent##_FUNC)

   #define M1_STFSRV_vidSET_EVENT_I(snFunc) \
      snFunc()


/******************************************************************************/
/*                                                                            */
/* !Description : STFSRV_vidINTERNAL_SET_EVENT(snModule, snStateflow, snEvent)*/
/* !MComment    : L'execution des evenements sera peut etre a ameliorer car   */
/*                le test est fait sur tous les evenements alors qu'ils sont  */
/*                associes aux etats de depart des transitions                */
/*                                                                            */
/******************************************************************************/
#define STFSRV_vidINTERNAL_SET_EVENT(snModule, snStateflow, snEvent) \
do \
{ \
   STFSRV_vidSET_EVENT_CARRIER(snModule, 0); \
   (*STFSRV_pfGET_DURING_FUNC_POINTER(snModule, snStateflow, snEvent))(); \
   (*STFSRV_pfGET_TRANS_FUNC_POINTER(snModule, snStateflow, snEvent))(); \
} \
while(0)


/******************************************************************************/
/*                                                                            */
/* !Description : STFSRV_vidSET_ACTIVE_STATE(snModule, snStateflow, snState)  */
/*                                                                            */
/******************************************************************************/
#define STFSRV_vidSET_ACTIVE_STATE(snModule, snStateflow, snState) \
   M1_STFSRV_vidSET_ACTIVE_STATE(snModule, snStateflow, STFSRV_udtGET_STATE_VAR(snModule, snStateflow), snState, STFSRV_udtGET_STATE_VAL(snModule, snState))
      
   #define M1_STFSRV_vidSET_ACTIVE_STATE(snModule, snStateflow, snVar, snState, snStateVal) \
      M2_STFSRV_vidSET_ACTIVE_STATE(snModule, snStateflow, snVar, snState, snStateVal)

   #define M2_STFSRV_vidSET_ACTIVE_STATE(snModule, snStateflow, snVar, snState, snStateVal) \
      STFSRV_vidSET_STATE_VAR(snVar, snStateVal); \
      if (STFSRV_bfGET_EVENT_CARRIER(snModule) != 0) \
      { \
         STFSRV_vidEXEC_OUT_EVENT(snModule, STFSRV_bfGET_EVENT_CARRIER(snModule)); \
      } \
      STFSRV_vidGET_ENTRY_FUNC(snModule,snState);


/******************************************************************************/
/*                                                                            */
/* !Description : STFSRV_vidINTERNAL_INIT_STATEFLOW(snModule, snStateflow)    */
/*                                                                            */
/******************************************************************************/
#define STFSRV_vidINTERNAL_INIT_STATEFLOW(snModule, snStateflow) \
   M1_STFSRV_vidINTERNAL_INIT_STATEFLOW(snModule, snStateflow)

   #define M1_STFSRV_vidINTERNAL_INIT_STATEFLOW(snModule, snStateflow) \
      M2_STFSRV_vidINTERNAL_INIT_STATEFLOW(snModule, snStateflow, STFSRV_udtGET_INIT_STATE(snModule, snStateflow))

   #define M2_STFSRV_vidINTERNAL_INIT_STATEFLOW(snModule, snStateflow, snState) \
      STFSRV_vidSET_ACTIVE_STATE(snModule, snStateflow, snState)


/******************************************************************************/
/*                                                                            */
/* !Description : STFSRV_vidINIT_TEMPO(snModule, snTempo)                     */
/*                                                                            */
/******************************************************************************/
#define STFSRV_vidINIT_TEMPO(snModule, snTempo) \
   M1_STFSRV_vidINIT_TEMPO(STFSRV_udtGET_TEMPO_VAR(snModule, snTempo), STFSRV_udtGET_INIT_TEMPO(snModule, snTempo))

   #define M1_STFSRV_vidINIT_TEMPO(snVar, snTempoinit) \
      M2_STFSRV_vidINIT_TEMPO(snVar, snTempoinit)

      #define M2_STFSRV_vidINIT_TEMPO(snVar, snTempoinit) \
         snVar = snTempoinit


/******************************************************************************/
/*                                                                            */
/* !Description : STFSRV_udtGET_TEMPO_VAR(snModule, snTempo)                  */
/*                                                                            */
/******************************************************************************/
#define STFSRV_udtGET_TEMPO_VAR(snModule, snTempo) \
   snModule##_TEMPO_##snTempo##_VAR


/******************************************************************************/
/*                                                                            */
/* !Description : STFSRV_udtGET_INIT_TEMPO(snModule, snTempo)                 */
/*                                                                            */
/******************************************************************************/
#define STFSRV_udtGET_INIT_TEMPO(snModule, snTempo) \
   snModule##_TEMPO_##snTempo##_INIT


/******************************************************************************/
/*                                                                            */
/* !Description : STFSRV_vidDEC_TEMPO(snModule, snTempo)                      */
/*                                                                            */
/******************************************************************************/
#define STFSRV_vidDEC_TEMPO(snModule, snTempo) \
   M1_STFSRV_vidDEC_TEMPO(STFSRV_udtGET_TEMPO_VAR(snModule, snTempo))

   #define M1_STFSRV_vidDEC_TEMPO(snVar) \
      M2_STFSRV_vidDEC_TEMPO(snVar)

      #define M2_STFSRV_vidDEC_TEMPO(snVar) \
         (snVar = (snVar > 0) ? (snVar - 1) : 0)


/******************************************************************************/
/*                                                                            */
/* !Description : STFSRV_vidEXEC_OUT_EVENT(snModule, snCarrier)               */
/*                                                                            */
/******************************************************************************/
#define STFSRV_vidEXEC_OUT_EVENT(snModule, snCarrier) \
   snModule##_EXEC_OUT_EVENT_FUNC(snCarrier)


/******************************************************************************/
/*                                                                            */
/* !Description : STFSRV_snGET_MAIN_STATEFLOW(snModule)                       */
/*                                                                            */
/******************************************************************************/
#define STFSRV_snGET_MAIN_STATEFLOW(snModule) \
   snModule##_STFSRV_MAIN


/******************************************************************************/
/*                                                                            */
/* !Description : STFSRV_udtGET_STATE_VAL(snModule, snState)                  */
/*                                                                            */
/******************************************************************************/
#define STFSRV_udtGET_STATE_VAL(snModule, snState) \
   snModule##_##snState##_VAL


/******************************************************************************/
/*                                                                            */
/* !Description : STFSRV_pfGET_TRANS_FUNC_POINTER(snModule,                   */
/*                                                snStateflow, snEvent)       */
/*                                                                            */
/******************************************************************************/
#define STFSRV_pfGET_TRANS_FUNC_POINTER(snModule, snStateflow, snEvent) \
   M1_STFSRV_pfGET_TRANS_FUNC_POINTER(snModule##_##snStateflow##_ON_##snEvent##_TRANS_PTR)

   #define M1_STFSRV_pfGET_TRANS_FUNC_POINTER(snPointer) \
      snPointer


/******************************************************************************/
/*                                                                            */
/* !Description : STFSRV_pfGET_DURING_FUNC_POINTER(snModule,                  */
/*                                                 snStateflow, snEvent)      */
/*                                                                            */
/******************************************************************************/
#define STFSRV_pfGET_DURING_FUNC_POINTER(snModule, snStateflow, snEvent) \
   M1_STFSRV_pfGET_DURING_FUNC_POINTER(snModule##_##snStateflow##_ON_##snEvent##_DURING_PTR)

   #define M1_STFSRV_pfGET_DURING_FUNC_POINTER(snPointer) \
      snPointer


/******************************************************************************/
/*                                                                            */
/* !Description : STFSRV_udtGET_STATE_VAR(snModule, snStateflow)              */
/*                                                                            */
/******************************************************************************/
#define STFSRV_udtGET_STATE_VAR(snModule, snStateflow) \
   snModule##_##snStateflow##_VAR


/******************************************************************************/
/*                                                                            */
/* !Description : STFSRV_vidGET_ENTRY_FUNC(snModule, snState)                 */
/*                                                                            */
/******************************************************************************/
#define STFSRV_vidGET_ENTRY_FUNC(snModule, snState) \
   M1_STFSRV_vidGET_ENTRY_FUNC(snModule##_##snState##_ENTRY)

   #define M1_STFSRV_vidGET_ENTRY_FUNC(snEntryfunc) \
      snEntryfunc()


/******************************************************************************/
/*                                                                            */
/* !Description : STFSRV_vidGET_DURING_FUNC(snModule, snState)                */
/*                                                                            */
/******************************************************************************/
#define STFSRV_vidGET_DURING_FUNC(snModule, snState) \
   M1_STFSRV_vidGET_DURING_FUNC(snModule##_##snState##_DURING)

   #define M1_STFSRV_vidGET_DURING_FUNC(snDuringfunc) \
      snDuringfunc()


/******************************************************************************/
/*                                                                            */
/* !Description : STFSRV_udtGET_INIT_STATE(snModule, snStateflow)             */
/*                                                                            */
/******************************************************************************/
#define STFSRV_udtGET_INIT_STATE(snModule, snStateflow) \
   snModule##_##snStateflow##_INIT_STATE


/******************************************************************************/
/*                                                                            */
/* !Description : STFSRV_bfGET_EVENT_CARRIER(snModule)                        */
/*                                                                            */
/******************************************************************************/
#define STFSRV_bfGET_EVENT_CARRIER(snModule) \
   snModule##_OUT_EVENT_CARRIER


/******************************************************************************/
/*                                                                            */
/* !Description : STFSRV_vidSET_STATE_VAR(snVar, snState)                     */
/*                                                                            */
/******************************************************************************/
#define STFSRV_vidSET_STATE_VAR(snVar, snState) \
   M1_STFSRV_vidSET_STATE_VAR(snVar, snState)

   #define M1_STFSRV_vidSET_STATE_VAR(snVar, snState) \
      (snVar = snState)


/******************************************************************************/
/*                                                                            */
/* !Description : STFSRV_vidSET_EVENT_CARRIER(snModule, udtValue)             */
/*                                                                            */
/******************************************************************************/
#define STFSRV_vidSET_EVENT_CARRIER(snModule, udtValue) \
   (snModule##_OUT_EVENT_CARRIER = udtValue)


#endif /* STFSRV_I_H */

/*-------------------------------- END OF FILE -------------------------------*/
