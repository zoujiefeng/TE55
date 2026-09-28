/********************************************************************************************************************/
/*                                                                                                                  */
/* TOOL-GENERATED SOURCECODE, DO NOT CHANGE                                                                         */
/*                                                                                                                  */
/********************************************************************************************************************/

#ifndef DEM_CFG_ENVEXTENDEDDATAREC_H
#define DEM_CFG_ENVEXTENDEDDATAREC_H

#define DEM_CFG_ENVEXTDATA2DATAELEMENT \
{ \
   DEM_DATAELEM_INTER_EXTENDEDDATARECORD_FAULT_OCCURRENCE_COUNTER,   DEM_DATAELEM_CS_EXTENDEDDATARECORD_FAULT_PENDING_COUNTER,   DEM_DATAELEM_CS_EXTENDEDDATARECORD_AGED_COUNTER,   DEM_DATAELEM_INTER_EXTENDEDDATARECORD_AGING_COUNTER,    /* Record_ExtendedDataRecord */ \
   0 \
}

#define DEM_EXTDATAREC_RECORD_EXTENDEDDATARECORD      1

#define DEM_CFG_ENVEXTDATAREC \
{ \
/*	   RecNum Trigger                       Update Index  */ \
	 { 0,     DEM_TRIGGER_NONE,             FALSE,0    } \
	,{ 1,     DEM_TRIGGER_ON_TEST_FAILED,   FALSE,4    } /* DEM_EXTDATAREC_RECORD_EXTENDEDDATARECORD */ \
}

#define DEM_CFG_ENVEXTDATAREC_ARRAYLENGTH  (1+1)

#endif

