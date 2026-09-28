/********************************************************************************************************************/
/*                                                                                                                  */
/* TOOL-GENERATED SOURCECODE, DO NOT CHANGE                                                                         */
/*                                                                                                                  */
/********************************************************************************************************************/

#ifndef DEM_CFG_ENVEXTENDEDDATA_H
#define DEM_CFG_ENVEXTENDEDDATA_H

#define DEM_CFG_ENVEXTDATA2EXTDATAREC \
{                                     \
   DEM_EXTDATAREC_RECORD_EXTENDEDDATARECORD,  /* DemExtendedDataClass_DTC_0x0D01_Event */ \
   DEM_EXTDATAREC_RECORD_EXTENDEDDATARECORD,  /* DemExtendedDataClass_DTC_0x0D02_Event */ \
   DEM_EXTDATAREC_RECORD_EXTENDEDDATARECORD,  /* DemExtendedDataClass_DTC_0x0D07_Event */ \
   DEM_EXTDATAREC_RECORD_EXTENDEDDATARECORD,  /* DemExtendedDataClass_0 */ \
   0 \
}

#define DEM_EXTDATA_DEMEXTENDEDDATACLASS_DTC_0X0D01_EVENT         1
#define DEM_EXTDATA_DEMEXTENDEDDATACLASS_DTC_0X0D02_EVENT         2
#define DEM_EXTDATA_DEMEXTENDEDDATACLASS_DTC_0X0D07_EVENT         3
#define DEM_EXTDATA_DEMEXTENDEDDATACLASS_0         4

#define DEM_CFG_ENVEXTDATA                 \
{                                          \
   { 0, 0 }                                \
,{1,4}   /* DEM_EXTDATA_DEMEXTENDEDDATACLASS_DTC_0X0D01_EVENT */     \
,{2,4}   /* DEM_EXTDATA_DEMEXTENDEDDATACLASS_DTC_0X0D02_EVENT */     \
,{3,4}   /* DEM_EXTDATA_DEMEXTENDEDDATACLASS_DTC_0X0D07_EVENT */     \
,{4,4}   /* DEM_EXTDATA_DEMEXTENDEDDATACLASS_0 */     \
}

#define DEM_CFG_ENVEXTDATA_ARRAYLENGTH  (4+1)

#endif

