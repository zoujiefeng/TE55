/******************************************************************************/
/*                                                                            */
/* !Layer           : SRVL                                                    */
/*                                                                            */
/* !Component       : GSTFSRV                                                  */
/* !Description     : StateFlow internal macros                               */
/*                                                                            */
/* !File            : GSTFSRV_I.H                                              */
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
/* $Archive::   P:/DCDC_JLR/LOG/DCDC_XC2B/REF/DCDC_BSW/GSTFSRV_I.H_v          $*/
/* $Revision::   1.0      $$Author::            $$Date::   07 Oct 2009 $*/
/******************************************************************************/

#ifndef GSTFSRV_I_H
#define GSTFSRV_I_H

#include "Std_Types.h"
#include "gstfsrv_Includes.h"
/******************************************************************************/
/* MACRO FUNCTIONS                                                            */
/******************************************************************************/


/******************************************************************************/
/*                                                                            */
/* !Description : GSTFSRV_vidINIT_STATEFLOW_I(snModule)                        */
/*                                                                            */
/******************************************************************************/
#define GSTFSRV_vidINIT_STATEFLOW_I(snModule) \
   M1_GSTFSRV_vidINIT_STATEFLOW_I(snModule, GSTFSRV_snGET_MAIN_STATEFLOW(snModule))

   #define M1_GSTFSRV_vidINIT_STATEFLOW_I(snModule, snStateflow) \
      M2_GSTFSRV_vidINIT_STATEFLOW_I(snModule, snStateflow)

   #define M2_GSTFSRV_vidINIT_STATEFLOW_I(snModule, snStateflow) \
      M3_GSTFSRV_vidINIT_STATEFLOW_I(snModule, snStateflow, GSTFSRV_udtGET_INIT_STATE(snModule, snStateflow))

   #define M3_GSTFSRV_vidINIT_STATEFLOW_I(snModule, snStateflow, snState) \
      GSTFSRV_vidSET_ACTIVE_STATE(snModule, snStateflow, snState)


/******************************************************************************/
/*                                                                            */
/* !Description : GSTFSRV_vidSET_EVENT_I(snModule, snEvent)                    */
/*                                                                            */
/******************************************************************************/
#define GSTFSRV_vidSET_EVENT_I(snModule, snEvent) \
   M1_GSTFSRV_vidSET_EVENT_I(snModule##_ON_##snEvent##_FUNC)

   #define M1_GSTFSRV_vidSET_EVENT_I(snFunc) \
      snFunc()


/******************************************************************************/
/*                                                                            */
/* !Description : GSTFSRV_vidINTERNAL_SET_EVENT(snModule, snStateflow, snEvent)*/
/* !MComment    : L'execution des evenements sera peut etre a ameliorer car   */
/*                le test est fait sur tous les evenements alors qu'ils sont  */
/*                associes aux etats de depart des transitions                */
/*                                                                            */
/******************************************************************************/
#define GSTFSRV_vidINTERNAL_SET_EVENT(snModule, snStateflow, snEvent) \
do \
{ \
   GSTFSRV_vidSET_EVENT_CARRIER(snModule, 0); \
   (*GSTFSRV_pfGET_DURING_FUNC_POINTER(snModule, snStateflow, snEvent))(); \
   (*GSTFSRV_pfGET_TRANS_FUNC_POINTER(snModule, snStateflow, snEvent))(); \
} \
while(0)


/******************************************************************************/
/*                                                                            */
/* !Description : GSTFSRV_vidSET_ACTIVE_STATE(snModule, snStateflow, snState)  */
/*                                                                            */
/******************************************************************************/
#define GSTFSRV_vidSET_ACTIVE_STATE(snModule, snStateflow, snState) \
   M1_GSTFSRV_vidSET_ACTIVE_STATE(snModule, snStateflow, GSTFSRV_udtGET_STATE_VAR(snModule, snStateflow), snState, GSTFSRV_udtGET_STATE_VAL(snModule, snState))
      
   #define M1_GSTFSRV_vidSET_ACTIVE_STATE(snModule, snStateflow, snVar, snState, snStateVal) \
      M2_GSTFSRV_vidSET_ACTIVE_STATE(snModule, snStateflow, snVar, snState, snStateVal)

   #define M2_GSTFSRV_vidSET_ACTIVE_STATE(snModule, snStateflow, snVar, snState, snStateVal) \
      GSTFSRV_vidSET_STATE_VAR(snVar, snStateVal); \
      if (GSTFSRV_bfGET_EVENT_CARRIER(snModule) != 0) \
      { \
         GSTFSRV_vidEXEC_OUT_EVENT(snModule, GSTFSRV_bfGET_EVENT_CARRIER(snModule)); \
      } \
      GSTFSRV_vidGET_ENTRY_FUNC(snModule,snState);


/******************************************************************************/
/*                                                                            */
/* !Description : GSTFSRV_vidINTERNAL_INIT_STATEFLOW(snModule, snStateflow)    */
/*                                                                            */
/******************************************************************************/
#define GSTFSRV_vidINTERNAL_INIT_STATEFLOW(snModule, snStateflow) \
   M1_GSTFSRV_vidINTERNAL_INIT_STATEFLOW(snModule, snStateflow)

   #define M1_GSTFSRV_vidINTERNAL_INIT_STATEFLOW(snModule, snStateflow) \
      M2_GSTFSRV_vidINTERNAL_INIT_STATEFLOW(snModule, snStateflow, GSTFSRV_udtGET_INIT_STATE(snModule, snStateflow))

   #define M2_GSTFSRV_vidINTERNAL_INIT_STATEFLOW(snModule, snStateflow, snState) \
      GSTFSRV_vidSET_ACTIVE_STATE(snModule, snStateflow, snState)


/******************************************************************************/
/*                                                                            */
/* !Description : GSTFSRV_vidINIT_TEMPO(snModule, snTempo)                     */
/*                                                                            */
/******************************************************************************/
#define GSTFSRV_vidINIT_TEMPO(snModule, snTempo) \
   M1_GSTFSRV_vidINIT_TEMPO(GSTFSRV_udtGET_TEMPO_VAR(snModule, snTempo), GSTFSRV_udtGET_INIT_TEMPO(snModule, snTempo))

   #define M1_GSTFSRV_vidINIT_TEMPO(snVar, snTempoinit) \
      M2_GSTFSRV_vidINIT_TEMPO(snVar, snTempoinit)

      #define M2_GSTFSRV_vidINIT_TEMPO(snVar, snTempoinit) \
         snVar = snTempoinit


/******************************************************************************/
/*                                                                            */
/* !Description : GSTFSRV_udtGET_TEMPO_VAR(snModule, snTempo)                  */
/*                                                                            */
/******************************************************************************/
#define GSTFSRV_udtGET_TEMPO_VAR(snModule, snTempo) \
   snModule##_TEMPO_##snTempo##_VAR


/******************************************************************************/
/*                                                                            */
/* !Description : GSTFSRV_udtGET_INIT_TEMPO(snModule, snTempo)                 */
/*                                                                            */
/******************************************************************************/
#define GSTFSRV_udtGET_INIT_TEMPO(snModule, snTempo) \
   snModule##_TEMPO_##snTempo##_INIT


/******************************************************************************/
/*                                                                            */
/* !Description : GSTFSRV_vidDEC_TEMPO(snModule, snTempo)                      */
/*                                                                            */
/******************************************************************************/
#define GSTFSRV_vidDEC_TEMPO(snModule, snTempo) \
   M1_GSTFSRV_vidDEC_TEMPO(GSTFSRV_udtGET_TEMPO_VAR(snModule, snTempo))

   #define M1_GSTFSRV_vidDEC_TEMPO(snVar) \
      M2_GSTFSRV_vidDEC_TEMPO(snVar)

      #define M2_GSTFSRV_vidDEC_TEMPO(snVar) \
         (snVar = (snVar > 0) ? (snVar - 1) : 0)


/******************************************************************************/
/*                                                                            */
/* !Description : GSTFSRV_vidEXEC_OUT_EVENT(snModule, snCarrier)               */
/*                                                                            */
/******************************************************************************/
#define GSTFSRV_vidEXEC_OUT_EVENT(snModule, snCarrier) \
   snModule##_EXEC_OUT_EVENT_FUNC(snCarrier)


/******************************************************************************/
/*                                                                            */
/* !Description : GSTFSRV_snGET_MAIN_STATEFLOW(snModule)                       */
/*                                                                            */
/******************************************************************************/
#define GSTFSRV_snGET_MAIN_STATEFLOW(snModule) \
   snModule##_GSTFSRV_MAIN


/******************************************************************************/
/*                                                                            */
/* !Description : GSTFSRV_udtGET_STATE_VAL(snModule, snState)                  */
/*                                                                            */
/******************************************************************************/
#define GSTFSRV_udtGET_STATE_VAL(snModule, snState) \
   snModule##_##snState##_VAL


/******************************************************************************/
/*                                                                            */
/* !Description : GSTFSRV_pfGET_TRANS_FUNC_POINTER(snModule,                   */
/*                                                snStateflow, snEvent)       */
/*                                                                            */
/******************************************************************************/
#define GSTFSRV_pfGET_TRANS_FUNC_POINTER(snModule, snStateflow, snEvent) \
   M1_GSTFSRV_pfGET_TRANS_FUNC_POINTER(snModule##_##snStateflow##_ON_##snEvent##_TRANS_PTR)

   #define M1_GSTFSRV_pfGET_TRANS_FUNC_POINTER(snPointer) \
      snPointer


/******************************************************************************/
/*                                                                            */
/* !Description : GSTFSRV_pfGET_DURING_FUNC_POINTER(snModule,                  */
/*                                                 snStateflow, snEvent)      */
/*                                                                            */
/******************************************************************************/
#define GSTFSRV_pfGET_DURING_FUNC_POINTER(snModule, snStateflow, snEvent) \
   M1_GSTFSRV_pfGET_DURING_FUNC_POINTER(snModule##_##snStateflow##_ON_##snEvent##_DURING_PTR)

   #define M1_GSTFSRV_pfGET_DURING_FUNC_POINTER(snPointer) \
      snPointer


/******************************************************************************/
/*                                                                            */
/* !Description : GSTFSRV_udtGET_STATE_VAR(snModule, snStateflow)              */
/*                                                                            */
/******************************************************************************/
#define GSTFSRV_udtGET_STATE_VAR(snModule, snStateflow) \
   snModule##_##snStateflow##_VAR


/******************************************************************************/
/*                                                                            */
/* !Description : GSTFSRV_vidGET_ENTRY_FUNC(snModule, snState)                 */
/*                                                                            */
/******************************************************************************/
#define GSTFSRV_vidGET_ENTRY_FUNC(snModule, snState) \
   M1_GSTFSRV_vidGET_ENTRY_FUNC(snModule##_##snState##_ENTRY)

   #define M1_GSTFSRV_vidGET_ENTRY_FUNC(snEntryfunc) \
      snEntryfunc()


/******************************************************************************/
/*                                                                            */
/* !Description : GSTFSRV_vidGET_DURING_FUNC(snModule, snState)                */
/*                                                                            */
/******************************************************************************/
#define GSTFSRV_vidGET_DURING_FUNC(snModule, snState) \
   M1_GSTFSRV_vidGET_DURING_FUNC(snModule##_##snState##_DURING)

   #define M1_GSTFSRV_vidGET_DURING_FUNC(snDuringfunc) \
      snDuringfunc()


/******************************************************************************/
/*                                                                            */
/* !Description : GSTFSRV_udtGET_INIT_STATE(snModule, snStateflow)             */
/*                                                                            */
/******************************************************************************/
#define GSTFSRV_udtGET_INIT_STATE(snModule, snStateflow) \
   snModule##_##snStateflow##_INIT_STATE


/******************************************************************************/
/*                                                                            */
/* !Description : GSTFSRV_bfGET_EVENT_CARRIER(snModule)                        */
/*                                                                            */
/******************************************************************************/
#define GSTFSRV_bfGET_EVENT_CARRIER(snModule) \
   snModule##_OUT_EVENT_CARRIER


/******************************************************************************/
/*                                                                            */
/* !Description : GSTFSRV_vidSET_STATE_VAR(snVar, snState)                     */
/*                                                                            */
/******************************************************************************/
#define GSTFSRV_vidSET_STATE_VAR(snVar, snState) \
   M1_GSTFSRV_vidSET_STATE_VAR(snVar, snState)

   #define M1_GSTFSRV_vidSET_STATE_VAR(snVar, snState) \
      (snVar = snState)


/******************************************************************************/
/*                                                                            */
/* !Description : GSTFSRV_vidSET_EVENT_CARRIER(snModule, udtValue)             */
/*                                                                            */
/******************************************************************************/
#define GSTFSRV_vidSET_EVENT_CARRIER(snModule, udtValue) \
   (snModule##_OUT_EVENT_CARRIER = udtValue)


#endif /* GSTFSRV_I_H */

/*-------------------------------- END OF FILE -------------------------------*/
