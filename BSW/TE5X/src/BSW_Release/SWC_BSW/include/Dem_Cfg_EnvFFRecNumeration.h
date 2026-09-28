/********************************************************************************************************************/
/*                                                                                                                  */
/* TOOL-GENERATED SOURCECODE, DO NOT CHANGE                                                                         */
/*                                                                                                                  */
/********************************************************************************************************************/

#ifndef DEM_CFG_ENVFFRECNUMERATION_H
#define DEM_CFG_ENVFFRECNUMERATION_H

/* ---------------------------------------- */
/* DEM_CFG_FFRECNUM                         */
/* ---------------------------------------- */
#define DEM_CFG_FFRECNUM_CALCULATED   1
#define DEM_CFG_FFRECNUM_CONFIGURED   2
#define DEM_CFG_FFRECNUM  DEM_CFG_FFRECNUM_CONFIGURED

#define DEM_CFG_FFRECCLASS_NUMBEROF_FFRECCLASSES          1
#define DEM_CFG_FFRECCLASS_MAXNUMBEROF_FFFRECNUMS         2

#define DEM_CFG_FFRECNUMCLASSES \
{ \
   {0x1  ,0x2  }   /* DemFreezeFrameRecNumClass */ \
}

#define DEM_CFG_ENVFFREC \
{ \
/*     RecNum    Trigger                       Update  */ \
     { 0,        DEM_TRIGGER_NONE,             FALSE } \
    ,{ 1,        DEM_TRIGGER_ON_TEST_FAILED,   FALSE } /* DEM_FFREC_DEMFREEZEFRAMERECORDCLASS_0X01 */ \
    ,{ 2,        DEM_TRIGGER_ON_TEST_FAILED,   TRUE } /* DEM_FFREC_DEMFREEZEFRAMERECORDCLASS_0X02 */ \
}

#define DEM_CFG_ENVFFREC_ARRAYLENGTH  (2u+1u)

#endif

