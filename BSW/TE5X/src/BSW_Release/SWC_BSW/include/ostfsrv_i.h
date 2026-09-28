/******************************************************************************/
/*                                                                            */
/* !Layer           : SRVL                                                    */
/*                                                                            */
/* !Component       : OSTFSRV                                                  */
/* !Description     : StateFlow internal macros                               */
/*                                                                            */
/* !File            : OSTFSRV_I.H                                              */
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
/* $Archive::   P:/DCDC_JLR/LOG/DCDC_XC2B/REF/DCDC_BSW/OSTFSRV_I.H_v          $*/
/* $Revision::   1.0      $$Author::            $$Date::   07 Oct 2009 $*/
/******************************************************************************/

#ifndef OSTFSRV_I_H
#define OSTFSRV_I_H

#include "Std_Types.h"
#include "ostfsrv_Includes.h"
/******************************************************************************/
/* MACRO FUNCTIONS                                                            */
/******************************************************************************/


/******************************************************************************/
/*                                                                            */
/* !Description : OSTFSRV_vidINIT_STATEFLOW_I(snModule)                        */
/*                                                                            */
/******************************************************************************/
#define OSTFSRV_vidINIT_STATEFLOW_I(snModule) \
   M1_OSTFSRV_vidINIT_STATEFLOW_I(snModule, OSTFSRV_snGET_MAIN_STATEFLOW(snModule))

   #define M1_OSTFSRV_vidINIT_STATEFLOW_I(snModule, snStateflow) \
      M2_OSTFSRV_vidINIT_STATEFLOW_I(snModule, snStateflow)

   #define M2_OSTFSRV_vidINIT_STATEFLOW_I(snModule, snStateflow) \
      M3_OSTFSRV_vidINIT_STATEFLOW_I(snModule, snStateflow, OSTFSRV_udtGET_INIT_STATE(snModule, snStateflow))

   #define M3_OSTFSRV_vidINIT_STATEFLOW_I(snModule, snStateflow, snState) \
      OSTFSRV_vidSET_ACTIVE_STATE(snModule, snStateflow, snState)


/******************************************************************************/
/*                                                                            */
/* !Description : OSTFSRV_vidSET_EVENT_I(snModule, snEvent)                    */
/*                                                                            */
/******************************************************************************/
#define OSTFSRV_vidSET_EVENT_I(snModule, snEvent) \
   M1_OSTFSRV_vidSET_EVENT_I(snModule##_ON_##snEvent##_FUNC)

   #define M1_OSTFSRV_vidSET_EVENT_I(snFunc) \
      snFunc()


/******************************************************************************/
/*                                                                            */
/* !Description : OSTFSRV_vidINTERNAL_SET_EVENT(snModule, snStateflow, snEvent)*/
/* !MComment    : L'execution des evenements sera peut etre a ameliorer car   */
/*                le test est fait sur tous les evenements alors qu'ils sont  */
/*                associes aux etats de depart des transitions                */
/*                                                                            */
/******************************************************************************/
#define OSTFSRV_vidINTERNAL_SET_EVENT(snModule, snStateflow, snEvent) \
do \
{ \
   OSTFSRV_vidSET_EVENT_CARRIER(snModule, 0); \
   (*OSTFSRV_pfGET_DURING_FUNC_POINTER(snModule, snStateflow, snEvent))(); \
   (*OSTFSRV_pfGET_TRANS_FUNC_POINTER(snModule, snStateflow, snEvent))(); \
} \
while(0)


/******************************************************************************/
/*                                                                            */
/* !Description : OSTFSRV_vidSET_ACTIVE_STATE(snModule, snStateflow, snState)  */
/*                                                                            */
/******************************************************************************/
#define OSTFSRV_vidSET_ACTIVE_STATE(snModule, snStateflow, snState) \
   M1_OSTFSRV_vidSET_ACTIVE_STATE(snModule, snStateflow, OSTFSRV_udtGET_STATE_VAR(snModule, snStateflow), snState, OSTFSRV_udtGET_STATE_VAL(snModule, snState))
      
   #define M1_OSTFSRV_vidSET_ACTIVE_STATE(snModule, snStateflow, snVar, snState, snStateVal) \
      M2_OSTFSRV_vidSET_ACTIVE_STATE(snModule, snStateflow, snVar, snState, snStateVal)

   #define M2_OSTFSRV_vidSET_ACTIVE_STATE(snModule, snStateflow, snVar, snState, snStateVal) \
      OSTFSRV_vidSET_STATE_VAR(snVar, snStateVal); \
      if (OSTFSRV_bfGET_EVENT_CARRIER(snModule) != 0) \
      { \
         OSTFSRV_vidEXEC_OUT_EVENT(snModule, OSTFSRV_bfGET_EVENT_CARRIER(snModule)); \
      } \
      OSTFSRV_vidGET_ENTRY_FUNC(snModule,snState);


/******************************************************************************/
/*                                                                            */
/* !Description : OSTFSRV_vidINTERNAL_INIT_STATEFLOW(snModule, snStateflow)    */
/*                                                                            */
/******************************************************************************/
#define OSTFSRV_vidINTERNAL_INIT_STATEFLOW(snModule, snStateflow) \
   M1_OSTFSRV_vidINTERNAL_INIT_STATEFLOW(snModule, snStateflow)

   #define M1_OSTFSRV_vidINTERNAL_INIT_STATEFLOW(snModule, snStateflow) \
      M2_OSTFSRV_vidINTERNAL_INIT_STATEFLOW(snModule, snStateflow, OSTFSRV_udtGET_INIT_STATE(snModule, snStateflow))

   #define M2_OSTFSRV_vidINTERNAL_INIT_STATEFLOW(snModule, snStateflow, snState) \
      OSTFSRV_vidSET_ACTIVE_STATE(snModule, snStateflow, snState)


/******************************************************************************/
/*                                                                            */
/* !Description : OSTFSRV_vidINIT_TEMPO(snModule, snTempo)                     */
/*                                                                            */
/******************************************************************************/
#define OSTFSRV_vidINIT_TEMPO(snModule, snTempo) \
   M1_OSTFSRV_vidINIT_TEMPO(OSTFSRV_udtGET_TEMPO_VAR(snModule, snTempo), OSTFSRV_udtGET_INIT_TEMPO(snModule, snTempo))

   #define M1_OSTFSRV_vidINIT_TEMPO(snVar, snTempoinit) \
      M2_OSTFSRV_vidINIT_TEMPO(snVar, snTempoinit)

      #define M2_OSTFSRV_vidINIT_TEMPO(snVar, snTempoinit) \
         snVar = snTempoinit


/******************************************************************************/
/*                                                                            */
/* !Description : OSTFSRV_udtGET_TEMPO_VAR(snModule, snTempo)                  */
/*                                                                            */
/******************************************************************************/
#define OSTFSRV_udtGET_TEMPO_VAR(snModule, snTempo) \
   snModule##_TEMPO_##snTempo##_VAR


/******************************************************************************/
/*                                                                            */
/* !Description : OSTFSRV_udtGET_INIT_TEMPO(snModule, snTempo)                 */
/*                                                                            */
/******************************************************************************/
#define OSTFSRV_udtGET_INIT_TEMPO(snModule, snTempo) \
   snModule##_TEMPO_##snTempo##_INIT


/******************************************************************************/
/*                                                                            */
/* !Description : OSTFSRV_vidDEC_TEMPO(snModule, snTempo)                      */
/*                                                                            */
/******************************************************************************/
#define OSTFSRV_vidDEC_TEMPO(snModule, snTempo) \
   M1_OSTFSRV_vidDEC_TEMPO(OSTFSRV_udtGET_TEMPO_VAR(snModule, snTempo))

   #define M1_OSTFSRV_vidDEC_TEMPO(snVar) \
      M2_OSTFSRV_vidDEC_TEMPO(snVar)

      #define M2_OSTFSRV_vidDEC_TEMPO(snVar) \
         (snVar = (snVar > 0) ? (snVar - 1) : 0)


/******************************************************************************/
/*                                                                            */
/* !Description : OSTFSRV_vidEXEC_OUT_EVENT(snModule, snCarrier)               */
/*                                                                            */
/******************************************************************************/
#define OSTFSRV_vidEXEC_OUT_EVENT(snModule, snCarrier) \
   snModule##_EXEC_OUT_EVENT_FUNC(snCarrier)


/******************************************************************************/
/*                                                                            */
/* !Description : OSTFSRV_snGET_MAIN_STATEFLOW(snModule)                       */
/*                                                                            */
/******************************************************************************/
#define OSTFSRV_snGET_MAIN_STATEFLOW(snModule) \
   snModule##_OSTFSRV_MAIN


/******************************************************************************/
/*                                                                            */
/* !Description : OSTFSRV_udtGET_STATE_VAL(snModule, snState)                  */
/*                                                                            */
/******************************************************************************/
#define OSTFSRV_udtGET_STATE_VAL(snModule, snState) \
   snModule##_##snState##_VAL


/******************************************************************************/
/*                                                                            */
/* !Description : OSTFSRV_pfGET_TRANS_FUNC_POINTER(snModule,                   */
/*                                                snStateflow, snEvent)       */
/*                                                                            */
/******************************************************************************/
#define OSTFSRV_pfGET_TRANS_FUNC_POINTER(snModule, snStateflow, snEvent) \
   M1_OSTFSRV_pfGET_TRANS_FUNC_POINTER(snModule##_##snStateflow##_ON_##snEvent##_TRANS_PTR)

   #define M1_OSTFSRV_pfGET_TRANS_FUNC_POINTER(snPointer) \
      snPointer


/******************************************************************************/
/*                                                                            */
/* !Description : OSTFSRV_pfGET_DURING_FUNC_POINTER(snModule,                  */
/*                                                 snStateflow, snEvent)      */
/*                                                                            */
/******************************************************************************/
#define OSTFSRV_pfGET_DURING_FUNC_POINTER(snModule, snStateflow, snEvent) \
   M1_OSTFSRV_pfGET_DURING_FUNC_POINTER(snModule##_##snStateflow##_ON_##snEvent##_DURING_PTR)

   #define M1_OSTFSRV_pfGET_DURING_FUNC_POINTER(snPointer) \
      snPointer


/******************************************************************************/
/*                                                                            */
/* !Description : OSTFSRV_udtGET_STATE_VAR(snModule, snStateflow)              */
/*                                                                            */
/******************************************************************************/
#define OSTFSRV_udtGET_STATE_VAR(snModule, snStateflow) \
   snModule##_##snStateflow##_VAR


/******************************************************************************/
/*                                                                            */
/* !Description : OSTFSRV_vidGET_ENTRY_FUNC(snModule, snState)                 */
/*                                                                            */
/******************************************************************************/
#define OSTFSRV_vidGET_ENTRY_FUNC(snModule, snState) \
   M1_OSTFSRV_vidGET_ENTRY_FUNC(snModule##_##snState##_ENTRY)

   #define M1_OSTFSRV_vidGET_ENTRY_FUNC(snEntryfunc) \
      snEntryfunc()


/******************************************************************************/
/*                                                                            */
/* !Description : OSTFSRV_vidGET_DURING_FUNC(snModule, snState)                */
/*                                                                            */
/******************************************************************************/
#define OSTFSRV_vidGET_DURING_FUNC(snModule, snState) \
   M1_OSTFSRV_vidGET_DURING_FUNC(snModule##_##snState##_DURING)

   #define M1_OSTFSRV_vidGET_DURING_FUNC(snDuringfunc) \
      snDuringfunc()


/******************************************************************************/
/*                                                                            */
/* !Description : OSTFSRV_udtGET_INIT_STATE(snModule, snStateflow)             */
/*                                                                            */
/******************************************************************************/
#define OSTFSRV_udtGET_INIT_STATE(snModule, snStateflow) \
   snModule##_##snStateflow##_INIT_STATE


/******************************************************************************/
/*                                                                            */
/* !Description : OSTFSRV_bfGET_EVENT_CARRIER(snModule)                        */
/*                                                                            */
/******************************************************************************/
#define OSTFSRV_bfGET_EVENT_CARRIER(snModule) \
   snModule##_OUT_EVENT_CARRIER


/******************************************************************************/
/*                                                                            */
/* !Description : OSTFSRV_vidSET_STATE_VAR(snVar, snState)                     */
/*                                                                            */
/******************************************************************************/
#define OSTFSRV_vidSET_STATE_VAR(snVar, snState) \
   M1_OSTFSRV_vidSET_STATE_VAR(snVar, snState)

   #define M1_OSTFSRV_vidSET_STATE_VAR(snVar, snState) \
      (snVar = snState)


/******************************************************************************/
/*                                                                            */
/* !Description : OSTFSRV_vidSET_EVENT_CARRIER(snModule, udtValue)             */
/*                                                                            */
/******************************************************************************/
#define OSTFSRV_vidSET_EVENT_CARRIER(snModule, udtValue) \
   (snModule##_OUT_EVENT_CARRIER = udtValue)


#endif /* OSTFSRV_I_H */

/*-------------------------------- END OF FILE -------------------------------*/
