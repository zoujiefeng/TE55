/******************************************************************************/
/*                                                                            */
/* !Layer           : SRVL                                                    */
/*                                                                            */
/* !Component       : ASTFSRV                                                  */
/* !Description     : StateFlow internal macros                               */
/*                                                                            */
/* !File            : ASTFSRV_I.H                                              */
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
/* $Archive::   P:/DCDC_JLR/LOG/DCDC_XC2B/REF/DCDC_BSW/ASTFSRV_I.H_v          $*/
/* $Revision::   1.0      $$Author::            $$Date::   07 Oct 2009 $*/
/******************************************************************************/

#ifndef ASTFSRV_I_H
#define ASTFSRV_I_H

#include "Std_Types.h"
#include "astfsrv_Includes.h"
/******************************************************************************/
/* MACRO FUNCTIONS                                                            */
/******************************************************************************/


/******************************************************************************/
/*                                                                            */
/* !Description : ASTFSRV_vidINIT_STATEFLOW_I(snModule)                        */
/*                                                                            */
/******************************************************************************/
#define ASTFSRV_vidINIT_STATEFLOW_I(snModule) \
   M1_ASTFSRV_vidINIT_STATEFLOW_I(snModule, ASTFSRV_snGET_MAIN_STATEFLOW(snModule))

   #define M1_ASTFSRV_vidINIT_STATEFLOW_I(snModule, snStateflow) \
      M2_ASTFSRV_vidINIT_STATEFLOW_I(snModule, snStateflow)

   #define M2_ASTFSRV_vidINIT_STATEFLOW_I(snModule, snStateflow) \
      M3_ASTFSRV_vidINIT_STATEFLOW_I(snModule, snStateflow, ASTFSRV_udtGET_INIT_STATE(snModule, snStateflow))

   #define M3_ASTFSRV_vidINIT_STATEFLOW_I(snModule, snStateflow, snState) \
      ASTFSRV_vidSET_ACTIVE_STATE(snModule, snStateflow, snState)


/******************************************************************************/
/*                                                                            */
/* !Description : ASTFSRV_vidSET_EVENT_I(snModule, snEvent)                    */
/*                                                                            */
/******************************************************************************/
#define ASTFSRV_vidSET_EVENT_I(snModule, snEvent) \
   M1_ASTFSRV_vidSET_EVENT_I(snModule##_ON_##snEvent##_FUNC)

   #define M1_ASTFSRV_vidSET_EVENT_I(snFunc) \
      snFunc()


/******************************************************************************/
/*                                                                            */
/* !Description : ASTFSRV_vidINTERNAL_SET_EVENT(snModule, snStateflow, snEvent)*/
/* !MComment    : L'execution des evenements sera peut etre a ameliorer car   */
/*                le test est fait sur tous les evenements alors qu'ils sont  */
/*                associes aux etats de depart des transitions                */
/*                                                                            */
/******************************************************************************/
#define ASTFSRV_vidINTERNAL_SET_EVENT(snModule, snStateflow, snEvent) \
do \
{ \
   ASTFSRV_vidSET_EVENT_CARRIER(snModule, 0); \
   (*ASTFSRV_pfGET_DURING_FUNC_POINTER(snModule, snStateflow, snEvent))(); \
   (*ASTFSRV_pfGET_TRANS_FUNC_POINTER(snModule, snStateflow, snEvent))(); \
} \
while(0)


/******************************************************************************/
/*                                                                            */
/* !Description : ASTFSRV_vidSET_ACTIVE_STATE(snModule, snStateflow, snState)  */
/*                                                                            */
/******************************************************************************/
#define ASTFSRV_vidSET_ACTIVE_STATE(snModule, snStateflow, snState) \
   M1_ASTFSRV_vidSET_ACTIVE_STATE(snModule, snStateflow, ASTFSRV_udtGET_STATE_VAR(snModule, snStateflow), snState, ASTFSRV_udtGET_STATE_VAL(snModule, snState))
      
   #define M1_ASTFSRV_vidSET_ACTIVE_STATE(snModule, snStateflow, snVar, snState, snStateVal) \
      M2_ASTFSRV_vidSET_ACTIVE_STATE(snModule, snStateflow, snVar, snState, snStateVal)

   #define M2_ASTFSRV_vidSET_ACTIVE_STATE(snModule, snStateflow, snVar, snState, snStateVal) \
      ASTFSRV_vidSET_STATE_VAR(snVar, snStateVal); \
      if (ASTFSRV_bfGET_EVENT_CARRIER(snModule) != 0) \
      { \
         ASTFSRV_vidEXEC_OUT_EVENT(snModule, ASTFSRV_bfGET_EVENT_CARRIER(snModule)); \
      } \
      ASTFSRV_vidGET_ENTRY_FUNC(snModule,snState);


/******************************************************************************/
/*                                                                            */
/* !Description : ASTFSRV_vidINTERNAL_INIT_STATEFLOW(snModule, snStateflow)    */
/*                                                                            */
/******************************************************************************/
#define ASTFSRV_vidINTERNAL_INIT_STATEFLOW(snModule, snStateflow) \
   M1_ASTFSRV_vidINTERNAL_INIT_STATEFLOW(snModule, snStateflow)

   #define M1_ASTFSRV_vidINTERNAL_INIT_STATEFLOW(snModule, snStateflow) \
      M2_ASTFSRV_vidINTERNAL_INIT_STATEFLOW(snModule, snStateflow, ASTFSRV_udtGET_INIT_STATE(snModule, snStateflow))

   #define M2_ASTFSRV_vidINTERNAL_INIT_STATEFLOW(snModule, snStateflow, snState) \
      ASTFSRV_vidSET_ACTIVE_STATE(snModule, snStateflow, snState)


/******************************************************************************/
/*                                                                            */
/* !Description : ASTFSRV_vidINIT_TEMPO(snModule, snTempo)                     */
/*                                                                            */
/******************************************************************************/
#define ASTFSRV_vidINIT_TEMPO(snModule, snTempo) \
   M1_ASTFSRV_vidINIT_TEMPO(ASTFSRV_udtGET_TEMPO_VAR(snModule, snTempo), ASTFSRV_udtGET_INIT_TEMPO(snModule, snTempo))

   #define M1_ASTFSRV_vidINIT_TEMPO(snVar, snTempoinit) \
      M2_ASTFSRV_vidINIT_TEMPO(snVar, snTempoinit)

      #define M2_ASTFSRV_vidINIT_TEMPO(snVar, snTempoinit) \
         snVar = snTempoinit


/******************************************************************************/
/*                                                                            */
/* !Description : ASTFSRV_udtGET_TEMPO_VAR(snModule, snTempo)                  */
/*                                                                            */
/******************************************************************************/
#define ASTFSRV_udtGET_TEMPO_VAR(snModule, snTempo) \
   snModule##_TEMPO_##snTempo##_VAR


/******************************************************************************/
/*                                                                            */
/* !Description : ASTFSRV_udtGET_INIT_TEMPO(snModule, snTempo)                 */
/*                                                                            */
/******************************************************************************/
#define ASTFSRV_udtGET_INIT_TEMPO(snModule, snTempo) \
   snModule##_TEMPO_##snTempo##_INIT


/******************************************************************************/
/*                                                                            */
/* !Description : ASTFSRV_vidDEC_TEMPO(snModule, snTempo)                      */
/*                                                                            */
/******************************************************************************/
#define ASTFSRV_vidDEC_TEMPO(snModule, snTempo) \
   M1_ASTFSRV_vidDEC_TEMPO(ASTFSRV_udtGET_TEMPO_VAR(snModule, snTempo))

   #define M1_ASTFSRV_vidDEC_TEMPO(snVar) \
      M2_ASTFSRV_vidDEC_TEMPO(snVar)

      #define M2_ASTFSRV_vidDEC_TEMPO(snVar) \
         (snVar = (snVar > 0) ? (snVar - 1) : 0)


/******************************************************************************/
/*                                                                            */
/* !Description : ASTFSRV_vidEXEC_OUT_EVENT(snModule, snCarrier)               */
/*                                                                            */
/******************************************************************************/
#define ASTFSRV_vidEXEC_OUT_EVENT(snModule, snCarrier) \
   snModule##_EXEC_OUT_EVENT_FUNC(snCarrier)


/******************************************************************************/
/*                                                                            */
/* !Description : ASTFSRV_snGET_MAIN_STATEFLOW(snModule)                       */
/*                                                                            */
/******************************************************************************/
#define ASTFSRV_snGET_MAIN_STATEFLOW(snModule) \
   snModule##_ASTFSRV_MAIN


/******************************************************************************/
/*                                                                            */
/* !Description : ASTFSRV_udtGET_STATE_VAL(snModule, snState)                  */
/*                                                                            */
/******************************************************************************/
#define ASTFSRV_udtGET_STATE_VAL(snModule, snState) \
   snModule##_##snState##_VAL


/******************************************************************************/
/*                                                                            */
/* !Description : ASTFSRV_pfGET_TRANS_FUNC_POINTER(snModule,                   */
/*                                                snStateflow, snEvent)       */
/*                                                                            */
/******************************************************************************/
#define ASTFSRV_pfGET_TRANS_FUNC_POINTER(snModule, snStateflow, snEvent) \
   M1_ASTFSRV_pfGET_TRANS_FUNC_POINTER(snModule##_##snStateflow##_ON_##snEvent##_TRANS_PTR)

   #define M1_ASTFSRV_pfGET_TRANS_FUNC_POINTER(snPointer) \
      snPointer


/******************************************************************************/
/*                                                                            */
/* !Description : ASTFSRV_pfGET_DURING_FUNC_POINTER(snModule,                  */
/*                                                 snStateflow, snEvent)      */
/*                                                                            */
/******************************************************************************/
#define ASTFSRV_pfGET_DURING_FUNC_POINTER(snModule, snStateflow, snEvent) \
   M1_ASTFSRV_pfGET_DURING_FUNC_POINTER(snModule##_##snStateflow##_ON_##snEvent##_DURING_PTR)

   #define M1_ASTFSRV_pfGET_DURING_FUNC_POINTER(snPointer) \
      snPointer


/******************************************************************************/
/*                                                                            */
/* !Description : ASTFSRV_udtGET_STATE_VAR(snModule, snStateflow)              */
/*                                                                            */
/******************************************************************************/
#define ASTFSRV_udtGET_STATE_VAR(snModule, snStateflow) \
   snModule##_##snStateflow##_VAR


/******************************************************************************/
/*                                                                            */
/* !Description : ASTFSRV_vidGET_ENTRY_FUNC(snModule, snState)                 */
/*                                                                            */
/******************************************************************************/
#define ASTFSRV_vidGET_ENTRY_FUNC(snModule, snState) \
   M1_ASTFSRV_vidGET_ENTRY_FUNC(snModule##_##snState##_ENTRY)

   #define M1_ASTFSRV_vidGET_ENTRY_FUNC(snEntryfunc) \
      snEntryfunc()


/******************************************************************************/
/*                                                                            */
/* !Description : ASTFSRV_vidGET_DURING_FUNC(snModule, snState)                */
/*                                                                            */
/******************************************************************************/
#define ASTFSRV_vidGET_DURING_FUNC(snModule, snState) \
   M1_ASTFSRV_vidGET_DURING_FUNC(snModule##_##snState##_DURING)

   #define M1_ASTFSRV_vidGET_DURING_FUNC(snDuringfunc) \
      snDuringfunc()


/******************************************************************************/
/*                                                                            */
/* !Description : ASTFSRV_udtGET_INIT_STATE(snModule, snStateflow)             */
/*                                                                            */
/******************************************************************************/
#define ASTFSRV_udtGET_INIT_STATE(snModule, snStateflow) \
   snModule##_##snStateflow##_INIT_STATE


/******************************************************************************/
/*                                                                            */
/* !Description : ASTFSRV_bfGET_EVENT_CARRIER(snModule)                        */
/*                                                                            */
/******************************************************************************/
#define ASTFSRV_bfGET_EVENT_CARRIER(snModule) \
   snModule##_OUT_EVENT_CARRIER


/******************************************************************************/
/*                                                                            */
/* !Description : ASTFSRV_vidSET_STATE_VAR(snVar, snState)                     */
/*                                                                            */
/******************************************************************************/
#define ASTFSRV_vidSET_STATE_VAR(snVar, snState) \
   M1_ASTFSRV_vidSET_STATE_VAR(snVar, snState)

   #define M1_ASTFSRV_vidSET_STATE_VAR(snVar, snState) \
      (snVar = snState)


/******************************************************************************/
/*                                                                            */
/* !Description : ASTFSRV_vidSET_EVENT_CARRIER(snModule, udtValue)             */
/*                                                                            */
/******************************************************************************/
#define ASTFSRV_vidSET_EVENT_CARRIER(snModule, udtValue) \
   (snModule##_OUT_EVENT_CARRIER = udtValue)


#endif /* ASTFSRV_I_H */

/*-------------------------------- END OF FILE -------------------------------*/
