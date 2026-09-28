/*
 * File: ASW_COM.h
 *
 * Code generated for Simulink model 'ASW_COM'.
 *
 * Model version                  : 1.394
 * Simulink Coder version         : 9.5 (R2021a) 14-Nov-2020
 * C/C++ source code generated on : Mon Dec  5 00:58:28 2022
 *
 * Target selection: autosar.tlc
 * Embedded hardware selection: Renesas->RH850
 * Code generation objectives: Unspecified
 * Validation result: Not run
 */

#ifndef RTW_HEADER_ASW_COM_h_
#define RTW_HEADER_ASW_COM_h_
#ifndef ASW_COM_COMMON_INCLUDES_
#define ASW_COM_COMMON_INCLUDES_
#include "rtwtypes.h"
#include "Rte_ASW_COM.h"
#endif                                 /* ASW_COM_COMMON_INCLUDES_ */

#include "ASW_COM_types.h"

/* Macros for accessing real-time model data structure */

/* Block signals (default storage) */
typedef struct tag_B {
  float64 GCU_Inner2_Fun_Cal;          /* '<S11>/GCU_Inner2_Fun_Cal' */
  float64 GCU_Inner1_Fun_Cal;          /* '<S10>/GCU_Inner1_Fun_Cal' */
  float64 MCUF_Inner2_Fun_Cal;         /* '<S23>/MCUF_Inner2_Fun_Cal' */
  float64 MCUF_Inner1_Fun_Cal;         /* '<S22>/MCUF_Inner1_Fun_Cal' */
  float32 PDCM21_Fun_Cal_o1;           /* '<S31>/PDCM21_Fun_Cal' */
  float32 PDCM21_Fun_Cal_o2;           /* '<S31>/PDCM21_Fun_Cal' */
  float32 PDCM21_Fun_Cal_o3;           /* '<S31>/PDCM21_Fun_Cal' */
  float32 PDCM21_Fun_Cal_o4;           /* '<S31>/PDCM21_Fun_Cal' */
  float32 PDCM21_Fun_Cal_o5;           /* '<S31>/PDCM21_Fun_Cal' */
  float32 PDCM21_Fun_Cal_o6;           /* '<S31>/PDCM21_Fun_Cal' */
  float32 PDCM21_Fun_Cal_o7;           /* '<S31>/PDCM21_Fun_Cal' */
  float32 PDCM21_Fun_Cal_o8;           /* '<S31>/PDCM21_Fun_Cal' */
  float32 IPB5_Fun_Cal_o1;             /* '<S13>/IPB5_Fun_Cal' */
  float32 IPB5_Fun_Cal_o2;             /* '<S13>/IPB5_Fun_Cal' */
  float32 IPB5_Fun_Cal_o3;             /* '<S13>/IPB5_Fun_Cal' */
  float32 IPB5_Fun_Cal_o4;             /* '<S13>/IPB5_Fun_Cal' */
  float32 IPB5_Fun_Cal_o5;             /* '<S13>/IPB5_Fun_Cal' */
  float32 IPB5_Fun_Cal_o6;             /* '<S13>/IPB5_Fun_Cal' */
  float32 IPB4_Fun_Cal_o1;             /* '<S12>/IPB4_Fun_Cal' */
  float32 IPB4_Fun_Cal_o2;             /* '<S12>/IPB4_Fun_Cal' */
  float32 IPB4_Fun_Cal_o3;             /* '<S12>/IPB4_Fun_Cal' */
  float32 IPB4_Fun_Cal_o4;             /* '<S12>/IPB4_Fun_Cal' */
  float32 IPB4_Fun_Cal_o5;             /* '<S12>/IPB4_Fun_Cal' */
  float32 IPB4_Fun_Cal_o6;             /* '<S12>/IPB4_Fun_Cal' */
  float32 PDCM_GCU_Fun_Cal_o1;         /* '<S38>/PDCM_GCU_Fun_Cal' */
  float32 PDCM_GCU_Fun_Cal_o2;         /* '<S38>/PDCM_GCU_Fun_Cal' */
  float32 PDCM_GCU_Fun_Cal_o3;         /* '<S38>/PDCM_GCU_Fun_Cal' */
  float32 PDCM_GCU_Fun_Cal_o4;         /* '<S38>/PDCM_GCU_Fun_Cal' */
  float32 PDCM_GCU_Fun_Cal_o5;         /* '<S38>/PDCM_GCU_Fun_Cal' */
  float32 PDCM_GCU_Fun_Cal_o6;         /* '<S38>/PDCM_GCU_Fun_Cal' */
  float32 EMS3_Fun_Cal_o1;             /* '<S3>/EMS3_Fun_Cal' */
  float32 EMS3_Fun_Cal_o2;             /* '<S3>/EMS3_Fun_Cal' */
  float32 EMS3_Fun_Cal_o3;             /* '<S3>/EMS3_Fun_Cal' */
  float32 EMS3_Fun_Cal_o4;             /* '<S3>/EMS3_Fun_Cal' */
  float32 EMS3_Fun_Cal_o5;             /* '<S3>/EMS3_Fun_Cal' */
  float32 EMS3_Fun_Cal_o6;             /* '<S3>/EMS3_Fun_Cal' */
  float32 EMS3_Fun_Cal_o7;             /* '<S3>/EMS3_Fun_Cal' */
  float32 EMS3_Fun_Cal_o8;             /* '<S3>/EMS3_Fun_Cal' */
  float32 EMS3_Fun_Cal_o9;             /* '<S3>/EMS3_Fun_Cal' */
  float32 EMS3_Fun_Cal_o10;            /* '<S3>/EMS3_Fun_Cal' */
  float32 MCUF_TCU3_Fun_Cal_o4;        /* '<S28>/MCUF_TCU3_Fun_Cal' */
  float32 MCUF_TCU2_Fun_Cal_o1;        /* '<S27>/MCUF_TCU2_Fun_Cal' */
  float32 MCUF_TCU2_Fun_Cal_o3;        /* '<S27>/MCUF_TCU2_Fun_Cal' */
  float32 MCUF_TCU1_Fun_Cal_o4;        /* '<S26>/MCUF_TCU1_Fun_Cal' */
  float32 MCUF_TCU1_Fun_Cal_o5;        /* '<S26>/MCUF_TCU1_Fun_Cal' */
  float32 MCUF_TCU1_Fun_Cal_o6;        /* '<S26>/MCUF_TCU1_Fun_Cal' */
  float32 GCU3_Fun_Cal_o1;             /* '<S8>/GCU3_Fun_Cal' */
  float32 GCU3_Fun_Cal_o2;             /* '<S8>/GCU3_Fun_Cal' */
  float32 GCU3_Fun_Cal_o3;             /* '<S8>/GCU3_Fun_Cal' */
  float32 GCU3_Fun_Cal_o4;             /* '<S8>/GCU3_Fun_Cal' */
  float32 GCU2_Fun_Cal_o1;             /* '<S7>/GCU2_Fun_Cal' */
  float32 GCU2_Fun_Cal_o2;             /* '<S7>/GCU2_Fun_Cal' */
  float32 GCU2_Fun_Cal_o5;             /* '<S7>/GCU2_Fun_Cal' */
  float32 MCUF8_Fun_Cal_o3;            /* '<S21>/MCUF8_Fun_Cal' */
  float32 MCUF_SelfHeat1_Fun_Cal_o2;   /* '<S24>/MCUF_SelfHeat1_Fun_Cal' */
  float32 MCUF_SelfHeat2_Fun_Cal_o2;   /* '<S25>/MCUF_SelfHeat2_Fun_Cal' */
  float32 MCUF6_Fun_Cal_o8;            /* '<S20>/MCUF6_Fun_Cal' */
  float32 MCUF6_Fun_Cal_o9;            /* '<S20>/MCUF6_Fun_Cal' */
  float32 MCUF2_Fun_Cal_o2;            /* '<S17>/MCUF2_Fun_Cal' */
  float32 MCUF2_Fun_Cal_o4;            /* '<S17>/MCUF2_Fun_Cal' */
  float32 MCUF3_Fun_Cal_o2;            /* '<S18>/MCUF3_Fun_Cal' */
  float32 MCUF3_Fun_Cal_o3;            /* '<S18>/MCUF3_Fun_Cal' */
  float32 MCUF3_Fun_Cal_o4;            /* '<S18>/MCUF3_Fun_Cal' */
  float32 MCUF3_Fun_Cal_o5;            /* '<S18>/MCUF3_Fun_Cal' */
  float32 TBOX_VehicleMode_Fun_Cal_o1; /* '<S42>/TBOX_VehicleMode_Fun_Cal' */
  float32 TBOX_VehicleMode_Fun_Cal_o2; /* '<S42>/TBOX_VehicleMode_Fun_Cal' */
  float32 TBOX_VehicleMode_Fun_Cal_o3; /* '<S42>/TBOX_VehicleMode_Fun_Cal' */
  float32 TBOX_VehicleMode_Fun_Cal_o4; /* '<S42>/TBOX_VehicleMode_Fun_Cal' */
  float32 TBOX_VehicleMode_Fun_Cal_o5; /* '<S42>/TBOX_VehicleMode_Fun_Cal' */
  float32 PDCM1_Fun_Cal_o1;            /* '<S30>/PDCM1_Fun_Cal' */
  float32 PDCM1_Fun_Cal_o2;            /* '<S30>/PDCM1_Fun_Cal' */
  float32 PDCM1_Fun_Cal_o3;            /* '<S30>/PDCM1_Fun_Cal' */
  float32 PDCM1_Fun_Cal_o4;            /* '<S30>/PDCM1_Fun_Cal' */
  float32 PDCM5_Fun_Cal_o1;            /* '<S35>/PDCM5_Fun_Cal' */
  float32 PDCM5_Fun_Cal_o2;            /* '<S35>/PDCM5_Fun_Cal' */
  float32 PDCM5_Fun_Cal_o3;            /* '<S35>/PDCM5_Fun_Cal' */
  float32 PDCM5_Fun_Cal_o4;            /* '<S35>/PDCM5_Fun_Cal' */
  float32 PDCM5_Fun_Cal_o5;            /* '<S35>/PDCM5_Fun_Cal' */
  float32 PDCM5_Fun_Cal_o6;            /* '<S35>/PDCM5_Fun_Cal' */
  float32 PDCM5_Fun_Cal_o7;            /* '<S35>/PDCM5_Fun_Cal' */
  float32 PDCM5_Fun_Cal_o8;            /* '<S35>/PDCM5_Fun_Cal' */
  float32 PDCM5_Fun_Cal_o9;            /* '<S35>/PDCM5_Fun_Cal' */
  float32 PDCM5_Fun_Cal_o10;           /* '<S35>/PDCM5_Fun_Cal' */
  float32 PDCM5_Fun_Cal_o11;           /* '<S35>/PDCM5_Fun_Cal' */
  float32 PDCM5_Fun_Cal_o12;           /* '<S35>/PDCM5_Fun_Cal' */
  float32 EMS5_Fun_Cal_o1;             /* '<S4>/EMS5_Fun_Cal' */
  float32 EMS5_Fun_Cal_o2;             /* '<S4>/EMS5_Fun_Cal' */
  float32 EMS5_Fun_Cal_o3;             /* '<S4>/EMS5_Fun_Cal' */
  float32 EMS5_Fun_Cal_o4;             /* '<S4>/EMS5_Fun_Cal' */
  float32 EMS5_Fun_Cal_o5;             /* '<S4>/EMS5_Fun_Cal' */
  float32 EMS5_Fun_Cal_o6;             /* '<S4>/EMS5_Fun_Cal' */
  float32 EMS5_Fun_Cal_o7;             /* '<S4>/EMS5_Fun_Cal' */
  float32 EMS5_Fun_Cal_o8;             /* '<S4>/EMS5_Fun_Cal' */
  float32 EMS5_Fun_Cal_o9;             /* '<S4>/EMS5_Fun_Cal' */
  float32 PDCM_Body_IC_Fun_Cal_o1;     /* '<S37>/PDCM_Body_IC_Fun_Cal' */
  float32 PDCM_Body_IC_Fun_Cal_o2;     /* '<S37>/PDCM_Body_IC_Fun_Cal' */
  float32 PDCM_Body_IC_Fun_Cal_o3;     /* '<S37>/PDCM_Body_IC_Fun_Cal' */
  float32 PDCM_Body_IC_Fun_Cal_o4;     /* '<S37>/PDCM_Body_IC_Fun_Cal' */
  float32 PDCM_Body_IC_Fun_Cal_o5;     /* '<S37>/PDCM_Body_IC_Fun_Cal' */
  float32 PDCM_Body_IC_Fun_Cal_o6;     /* '<S37>/PDCM_Body_IC_Fun_Cal' */
  float32 PDCM_Body_IC_Fun_Cal_o7;     /* '<S37>/PDCM_Body_IC_Fun_Cal' */
  float32 PDCM_Body_IC_Fun_Cal_o8;     /* '<S37>/PDCM_Body_IC_Fun_Cal' */
  float32 PDCM_Body_IC_Fun_Cal_o9;     /* '<S37>/PDCM_Body_IC_Fun_Cal' */
  float32 PDCM_Body_IC_Fun_Cal_o10;    /* '<S37>/PDCM_Body_IC_Fun_Cal' */
  float32 PDCM_Body_IC_Fun_Cal_o11;    /* '<S37>/PDCM_Body_IC_Fun_Cal' */
  float32 PDCM_Body_IC_Fun_Cal_o12;    /* '<S37>/PDCM_Body_IC_Fun_Cal' */
  float32 BCM_peps_Fun_Cal_o1;         /* '<S1>/BCM_peps_Fun_Cal' */
  float32 BCM_peps_Fun_Cal_o2;         /* '<S1>/BCM_peps_Fun_Cal' */
  float32 BCM_peps_Fun_Cal_o3;         /* '<S1>/BCM_peps_Fun_Cal' */
  float32 BCM_peps_Fun_Cal_o4;         /* '<S1>/BCM_peps_Fun_Cal' */
  float32 BCM_peps_Fun_Cal_o5;         /* '<S1>/BCM_peps_Fun_Cal' */
  float32 BCM_peps_Fun_Cal_o6;         /* '<S1>/BCM_peps_Fun_Cal' */
  float32 BCM_peps_Fun_Cal_o7;         /* '<S1>/BCM_peps_Fun_Cal' */
  float32 BCM_peps_Fun_Cal_o8;         /* '<S1>/BCM_peps_Fun_Cal' */
  float32 BCM_peps_Fun_Cal_o9;         /* '<S1>/BCM_peps_Fun_Cal' */
  float32 BCM_peps_Fun_Cal_o10;        /* '<S1>/BCM_peps_Fun_Cal' */
  float32 BCM_peps_Fun_Cal_o11;        /* '<S1>/BCM_peps_Fun_Cal' */
  float32 BCM_peps_Fun_Cal_o12;        /* '<S1>/BCM_peps_Fun_Cal' */
  float32 BCM_peps_Fun_Cal_o13;        /* '<S1>/BCM_peps_Fun_Cal' */
  float32 BCM_peps_Fun_Cal_o14;        /* '<S1>/BCM_peps_Fun_Cal' */
  float32 BCM_peps_Fun_Cal_o15;        /* '<S1>/BCM_peps_Fun_Cal' */
  float32 BCM_peps_Fun_Cal_o16;        /* '<S1>/BCM_peps_Fun_Cal' */
  float32 BCM_peps_Fun_Cal_o17;        /* '<S1>/BCM_peps_Fun_Cal' */
  float32 BCM_peps_Fun_Cal_o18;        /* '<S1>/BCM_peps_Fun_Cal' */
  float32 BCM_peps_Fun_Cal_o19;        /* '<S1>/BCM_peps_Fun_Cal' */
  float32 BCM_peps_Fun_Cal_o20;        /* '<S1>/BCM_peps_Fun_Cal' */
  float32 BCM_peps_Fun_Cal_o21;        /* '<S1>/BCM_peps_Fun_Cal' */
  float32 BCM_peps_Fun_Cal_o22;        /* '<S1>/BCM_peps_Fun_Cal' */
  float32 BCM_peps_Fun_Cal_o23;        /* '<S1>/BCM_peps_Fun_Cal' */
  float32 BCM_peps_Fun_Cal_o24;        /* '<S1>/BCM_peps_Fun_Cal' */
  float32 BCM_peps_Fun_Cal_o25;        /* '<S1>/BCM_peps_Fun_Cal' */
  float32 BCM_peps_Fun_Cal_o26;        /* '<S1>/BCM_peps_Fun_Cal' */
  float32 PDCM_OBD_Fun_Cal_o1;         /* '<S40>/PDCM_OBD_Fun_Cal' */
  float32 PDCM_OBD_Fun_Cal_o2;         /* '<S40>/PDCM_OBD_Fun_Cal' */
  float32 PDCM_OBD_Fun_Cal_o3;         /* '<S40>/PDCM_OBD_Fun_Cal' */
  float32 PDCM_OBD_Fun_Cal_o4;         /* '<S40>/PDCM_OBD_Fun_Cal' */
  float32 PDCM_OBD_Fun_Cal_o5;         /* '<S40>/PDCM_OBD_Fun_Cal' */
  float32 PDCM_OBD_Fun_Cal_o6;         /* '<S40>/PDCM_OBD_Fun_Cal' */
  float32 PDCM_OBD_Fun_Cal_o7;         /* '<S40>/PDCM_OBD_Fun_Cal' */
  float32 PDCM_OBD_Fun_Cal_o8;         /* '<S40>/PDCM_OBD_Fun_Cal' */
  float32 PDCM_OBD_Fun_Cal_o9;         /* '<S40>/PDCM_OBD_Fun_Cal' */
  float32 EMS8_Fun_Cal_o1;             /* '<S5>/EMS8_Fun_Cal' */
  float32 EMS8_Fun_Cal_o2;             /* '<S5>/EMS8_Fun_Cal' */
  float32 EMS8_Fun_Cal_o3;             /* '<S5>/EMS8_Fun_Cal' */
  float32 EMS8_Fun_Cal_o4;             /* '<S5>/EMS8_Fun_Cal' */
  float32 EMS8_Fun_Cal_o5;             /* '<S5>/EMS8_Fun_Cal' */
  float32 EMS8_Fun_Cal_o6;             /* '<S5>/EMS8_Fun_Cal' */
  float32 EMS8_Fun_Cal_o7;             /* '<S5>/EMS8_Fun_Cal' */
  float32 EMS8_Fun_Cal_o8;             /* '<S5>/EMS8_Fun_Cal' */
  float32 EMS8_Fun_Cal_o9;             /* '<S5>/EMS8_Fun_Cal' */
  float32 IVI_timeAndGPS_Fun_Cal_o1;   /* '<S15>/IVI_timeAndGPS_Fun_Cal' */
  float32 IVI_timeAndGPS_Fun_Cal_o2;   /* '<S15>/IVI_timeAndGPS_Fun_Cal' */
  float32 IVI_timeAndGPS_Fun_Cal_o3;   /* '<S15>/IVI_timeAndGPS_Fun_Cal' */
  float32 IVI_timeAndGPS_Fun_Cal_o4;   /* '<S15>/IVI_timeAndGPS_Fun_Cal' */
  float32 IVI_timeAndGPS_Fun_Cal_o5;   /* '<S15>/IVI_timeAndGPS_Fun_Cal' */
  float32 IVI_timeAndGPS_Fun_Cal_o6;   /* '<S15>/IVI_timeAndGPS_Fun_Cal' */
  float32 IVI_timeAndGPS_Fun_Cal_o7;   /* '<S15>/IVI_timeAndGPS_Fun_Cal' */
  float32 IVI_timeAndGPS_Fun_Cal_o8;   /* '<S15>/IVI_timeAndGPS_Fun_Cal' */
  float32 PDCM_SelfHeat_Fun_Cal;       /* '<S41>/PDCM_SelfHeat_Fun_Cal' */
  float32 PDCM_IC_ACU_Fun_Cal_o1;      /* '<S39>/PDCM_IC_ACU_Fun_Cal' */
  float32 PDCM_IC_ACU_Fun_Cal_o2;      /* '<S39>/PDCM_IC_ACU_Fun_Cal' */
  float32 PDCM_IC_ACU_Fun_Cal_o3;      /* '<S39>/PDCM_IC_ACU_Fun_Cal' */
  float32 PDCM_IC_ACU_Fun_Cal_o4;      /* '<S39>/PDCM_IC_ACU_Fun_Cal' */
  float32 PDCM_IC_ACU_Fun_Cal_o5;      /* '<S39>/PDCM_IC_ACU_Fun_Cal' */
  float32 PDCM_IC_ACU_Fun_Cal_o6;      /* '<S39>/PDCM_IC_ACU_Fun_Cal' */
  float32 PDCM_IC_ACU_Fun_Cal_o7;      /* '<S39>/PDCM_IC_ACU_Fun_Cal' */
  float32 PDCM_IC_ACU_Fun_Cal_o8;      /* '<S39>/PDCM_IC_ACU_Fun_Cal' */
  float32 PDCM_IC_ACU_Fun_Cal_o9;      /* '<S39>/PDCM_IC_ACU_Fun_Cal' */
  float32 IPB7_Fun_o1;                 /* '<S14>/IPB7_Fun' */
  float32 IPB7_Fun_o2;                 /* '<S14>/IPB7_Fun' */
  float32 IPB7_Fun_o3;                 /* '<S14>/IPB7_Fun' */
  float32 IPB7_Fun_o4;                 /* '<S14>/IPB7_Fun' */
  float32 IPB7_Fun_o5;                 /* '<S14>/IPB7_Fun' */
  float32 IPB7_Fun_o6;                 /* '<S14>/IPB7_Fun' */
  float32 IPB7_Fun_o7;                 /* '<S14>/IPB7_Fun' */
  float32 IPB7_Fun_o8;                 /* '<S14>/IPB7_Fun' */
  float32 IPB7_Fun_o9;                 /* '<S14>/IPB7_Fun' */
  float32 IPB7_Fun_o10;                /* '<S14>/IPB7_Fun' */
  float32 IPB7_Fun_o11;                /* '<S14>/IPB7_Fun' */
  float32 IPB7_Fun_o12;                /* '<S14>/IPB7_Fun' */
  float32 IPB7_Fun_o13;                /* '<S14>/IPB7_Fun' */
  float32 IPB7_Fun_o14;                /* '<S14>/IPB7_Fun' */
  float32 IPB7_Fun_o15;                /* '<S14>/IPB7_Fun' */
  float32 IPB7_Fun_o16;                /* '<S14>/IPB7_Fun' */
  float32 IPB7_Fun_o17;                /* '<S14>/IPB7_Fun' */
  float32 IPB7_Fun_o18;                /* '<S14>/IPB7_Fun' */
  float32 IPB7_Fun_o19;                /* '<S14>/IPB7_Fun' */
  float32 IPB7_Fun_o20;                /* '<S14>/IPB7_Fun' */
  float32 IPB7_Fun_o21;                /* '<S14>/IPB7_Fun' */
  float32 IPB7_Fun_o22;                /* '<S14>/IPB7_Fun' */
  float32 IPB7_Fun_o23;                /* '<S14>/IPB7_Fun' */
  float32 IPB7_Fun_o24;                /* '<S14>/IPB7_Fun' */
  float32 IPB7_Fun_o25;                /* '<S14>/IPB7_Fun' */
  float32 IPB7_Fun_o26;                /* '<S14>/IPB7_Fun' */
  float32 IPB7_Fun_o27;                /* '<S14>/IPB7_Fun' */
  float32 IPB7_Fun_o28;                /* '<S14>/IPB7_Fun' */
  float32 IPB7_Fun_o29;                /* '<S14>/IPB7_Fun' */
  float32 IPB7_Fun_o30;                /* '<S14>/IPB7_Fun' */
  float32 IPB7_Fun_o31;                /* '<S14>/IPB7_Fun' */
  float32 IPB7_Fun_o32;                /* '<S14>/IPB7_Fun' */
  float32 PDCM30_Fun_Cal_o1;           /* '<S34>/PDCM30_Fun_Cal' */
  float32 PDCM30_Fun_Cal_o2;           /* '<S34>/PDCM30_Fun_Cal' */
  float32 PDCM30_Fun_Cal_o3;           /* '<S34>/PDCM30_Fun_Cal' */
  float32 PDCM30_Fun_Cal_o4;           /* '<S34>/PDCM30_Fun_Cal' */
  float32 PDCM30_Fun_Cal_o5;           /* '<S34>/PDCM30_Fun_Cal' */
  float32 PDCM30_Fun_Cal_o6;           /* '<S34>/PDCM30_Fun_Cal' */
  float32 PDCM10_Fun_Cal_o1;           /* '<S29>/PDCM10_Fun_Cal' */
  float32 PDCM10_Fun_Cal_o2;           /* '<S29>/PDCM10_Fun_Cal' */
  float32 PDCM10_Fun_Cal_o3;           /* '<S29>/PDCM10_Fun_Cal' */
  float32 PDCM10_Fun_Cal_o4;           /* '<S29>/PDCM10_Fun_Cal' */
  float32 PDCM10_Fun_Cal_o5;           /* '<S29>/PDCM10_Fun_Cal' */
  float32 PDCM10_Fun_Cal_o6;           /* '<S29>/PDCM10_Fun_Cal' */
  float32 PDCM10_Fun_Cal_o7;           /* '<S29>/PDCM10_Fun_Cal' */
  float32 PDCM10_Fun_Cal_o8;           /* '<S29>/PDCM10_Fun_Cal' */
  float32 PDCM10_Fun_Cal_o9;           /* '<S29>/PDCM10_Fun_Cal' */
  float32 PDCM10_Fun_Cal_o10;          /* '<S29>/PDCM10_Fun_Cal' */
  float32 PDCM10_Fun_Cal_o11;          /* '<S29>/PDCM10_Fun_Cal' */
  float32 PDCM10_Fun_Cal_o12;          /* '<S29>/PDCM10_Fun_Cal' */
  float32 PDCM10_Fun_Cal_o13;          /* '<S29>/PDCM10_Fun_Cal' */
  float32 PDCM10_Fun_Cal_o14;          /* '<S29>/PDCM10_Fun_Cal' */
  float32 PDCM10_Fun_Cal_o15;          /* '<S29>/PDCM10_Fun_Cal' */
  float32 PDCM10_Fun_Cal_o16;          /* '<S29>/PDCM10_Fun_Cal' */
  float32 PDCM10_Fun_Cal_o17;          /* '<S29>/PDCM10_Fun_Cal' */
  float32 PDCM10_Fun_Cal_o18;          /* '<S29>/PDCM10_Fun_Cal' */
  float32 PDCM10_Fun_Cal_o19;          /* '<S29>/PDCM10_Fun_Cal' */
  float32 PDCM10_Fun_Cal_o20;          /* '<S29>/PDCM10_Fun_Cal' */
  float32 PDCM10_Fun_Cal_o21;          /* '<S29>/PDCM10_Fun_Cal' */
  float32 PDCM_ACU_EPS_Fun_Cal_o1;     /* '<S36>/PDCM_ACU_EPS_Fun_Cal' */
  float32 PDCM_ACU_EPS_Fun_Cal_o2;     /* '<S36>/PDCM_ACU_EPS_Fun_Cal' */
  float32 PDCM_ACU_EPS_Fun_Cal_o3;     /* '<S36>/PDCM_ACU_EPS_Fun_Cal' */
  float32 PDCM_ACU_EPS_Fun_Cal_o4;     /* '<S36>/PDCM_ACU_EPS_Fun_Cal' */
  float32 PDCM_ACU_EPS_Fun_Cal_o5;     /* '<S36>/PDCM_ACU_EPS_Fun_Cal' */
  float32 PDCM_ACU_EPS_Fun_Cal_o6;     /* '<S36>/PDCM_ACU_EPS_Fun_Cal' */
  float32 MCUF1_Fun_Cal_o5;            /* '<S16>/MCUF1_Fun_Cal' */
  float32 MCUF1_Fun_Cal_o8;            /* '<S16>/MCUF1_Fun_Cal' */
  float32 EMS1_Fun_Cal_o1;             /* '<S2>/EMS1_Fun_Cal' */
  float32 EMS1_Fun_Cal_o2;             /* '<S2>/EMS1_Fun_Cal' */
  float32 EMS1_Fun_Cal_o3;             /* '<S2>/EMS1_Fun_Cal' */
  float32 EMS1_Fun_Cal_o4;             /* '<S2>/EMS1_Fun_Cal' */
  float32 EMS1_Fun_Cal_o5;             /* '<S2>/EMS1_Fun_Cal' */
  float32 EMS1_Fun_Cal_o6;             /* '<S2>/EMS1_Fun_Cal' */
  float32 EMS1_Fun_Cal_o7;             /* '<S2>/EMS1_Fun_Cal' */
  float32 EMS1_Fun_Cal_o8;             /* '<S2>/EMS1_Fun_Cal' */
  float32 EMS1_Fun_Cal_o9;             /* '<S2>/EMS1_Fun_Cal' */
  float32 EMS1_Fun_Cal_o10;            /* '<S2>/EMS1_Fun_Cal' */
  float32 EMS1_Fun_Cal_o11;            /* '<S2>/EMS1_Fun_Cal' */
  float32 EMS1_Fun_Cal_o12;            /* '<S2>/EMS1_Fun_Cal' */
  float32 PDCM24_Fun_Cal_o1;           /* '<S33>/PDCM24_Fun_Cal' */
  float32 PDCM24_Fun_Cal_o2;           /* '<S33>/PDCM24_Fun_Cal' */
  float32 PDCM24_Fun_Cal_o3;           /* '<S33>/PDCM24_Fun_Cal' */
  float32 PDCM24_Fun_Cal_o4;           /* '<S33>/PDCM24_Fun_Cal' */
  float32 PDCM24_Fun_Cal_o5;           /* '<S33>/PDCM24_Fun_Cal' */
  float32 PDCM24_Fun_Cal_o6;           /* '<S33>/PDCM24_Fun_Cal' */
  float32 PDCM24_Fun_Cal_o7;           /* '<S33>/PDCM24_Fun_Cal' */
  float32 PDCM24_Fun_Cal_o8;           /* '<S33>/PDCM24_Fun_Cal' */
  float32 PDCM24_Fun_Cal_o9;           /* '<S33>/PDCM24_Fun_Cal' */
  float32 PDCM24_Fun_Cal_o10;          /* '<S33>/PDCM24_Fun_Cal' */
  float32 PDCM24_Fun_Cal_o11;          /* '<S33>/PDCM24_Fun_Cal' */
  float32 PDCM22_Fun_Cal_o1;           /* '<S32>/PDCM22_Fun_Cal' */
  float32 PDCM22_Fun_Cal_o2;           /* '<S32>/PDCM22_Fun_Cal' */
  float32 PDCM22_Fun_Cal_o3;           /* '<S32>/PDCM22_Fun_Cal' */
  float32 PDCM22_Fun_Cal_o4;           /* '<S32>/PDCM22_Fun_Cal' */
  float32 PDCM22_Fun_Cal_o5;           /* '<S32>/PDCM22_Fun_Cal' */
  float32 PDCM22_Fun_Cal_o6;           /* '<S32>/PDCM22_Fun_Cal' */
  float32 PDCM22_Fun_Cal_o7;           /* '<S32>/PDCM22_Fun_Cal' */
  float32 PDCM22_Fun_Cal_o8;           /* '<S32>/PDCM22_Fun_Cal' */
  float32 GCU1_Fun_Cal_o1;             /* '<S6>/GCU1_Fun_Cal' */
  float32 GCU1_Fun_Cal_o2;             /* '<S6>/GCU1_Fun_Cal' */
  uint16 MCUF_SelfHeat1_Fun_Cal_o1;    /* '<S24>/MCUF_SelfHeat1_Fun_Cal' */
  uint16 MCUF_SelfHeat2_Fun_Cal_o1;    /* '<S25>/MCUF_SelfHeat2_Fun_Cal' */
  uint16 MCUF4_Fun_Cal_o3;             /* '<S19>/MCUF4_Fun_Cal' */
  uint16 MCUF4_Fun_Cal_o4;             /* '<S19>/MCUF4_Fun_Cal' */
  uint16 MCUF4_Fun_Cal_o5;             /* '<S19>/MCUF4_Fun_Cal' */
  uint16 MCUF2_Fun_Cal_o7;             /* '<S17>/MCUF2_Fun_Cal' */
  uint16 MCUF1_Fun_Cal_o6;             /* '<S16>/MCUF1_Fun_Cal' */
  uint16 GCU1_Fun_Cal_o3;              /* '<S6>/GCU1_Fun_Cal' */
  uint8 MCUF_TCU3_Fun_Cal_o1;          /* '<S28>/MCUF_TCU3_Fun_Cal' */
  uint8 MCUF_TCU3_Fun_Cal_o2;          /* '<S28>/MCUF_TCU3_Fun_Cal' */
  uint8 MCUF_TCU3_Fun_Cal_o3;          /* '<S28>/MCUF_TCU3_Fun_Cal' */
  uint8 MCUF_TCU3_Fun_Cal_o5;          /* '<S28>/MCUF_TCU3_Fun_Cal' */
  uint8 MCUF_TCU3_Fun_Cal_o6;          /* '<S28>/MCUF_TCU3_Fun_Cal' */
  uint8 MCUF_TCU2_Fun_Cal_o2;          /* '<S27>/MCUF_TCU2_Fun_Cal' */
  uint8 MCUF_TCU2_Fun_Cal_o4;          /* '<S27>/MCUF_TCU2_Fun_Cal' */
  uint8 MCUF_TCU2_Fun_Cal_o5;          /* '<S27>/MCUF_TCU2_Fun_Cal' */
  uint8 MCUF_TCU1_Fun_Cal_o1;          /* '<S26>/MCUF_TCU1_Fun_Cal' */
  uint8 MCUF_TCU1_Fun_Cal_o2;          /* '<S26>/MCUF_TCU1_Fun_Cal' */
  uint8 MCUF_TCU1_Fun_Cal_o7;          /* '<S26>/MCUF_TCU1_Fun_Cal' */
  uint8 MCUF_TCU1_Fun_Cal_o8;          /* '<S26>/MCUF_TCU1_Fun_Cal' */
  uint8 GCU4_Fun_Cal_o1;               /* '<S9>/GCU4_Fun_Cal' */
  uint8 GCU4_Fun_Cal_o2;               /* '<S9>/GCU4_Fun_Cal' */
  uint8 GCU4_Fun_Cal_o3;               /* '<S9>/GCU4_Fun_Cal' */
  uint8 GCU4_Fun_Cal_o4;               /* '<S9>/GCU4_Fun_Cal' */
  uint8 GCU4_Fun_Cal_o5;               /* '<S9>/GCU4_Fun_Cal' */
  uint8 GCU4_Fun_Cal_o6;               /* '<S9>/GCU4_Fun_Cal' */
  uint8 GCU4_Fun_Cal_o7;               /* '<S9>/GCU4_Fun_Cal' */
  uint8 GCU3_Fun_Cal_o5;               /* '<S8>/GCU3_Fun_Cal' */
  uint8 GCU3_Fun_Cal_o6;               /* '<S8>/GCU3_Fun_Cal' */
  uint8 GCU3_Fun_Cal_o7;               /* '<S8>/GCU3_Fun_Cal' */
  uint8 GCU2_Fun_Cal_o4;               /* '<S7>/GCU2_Fun_Cal' */
  uint8 GCU2_Fun_Cal_o6;               /* '<S7>/GCU2_Fun_Cal' */
  uint8 GCU2_Fun_Cal_o7;               /* '<S7>/GCU2_Fun_Cal' */
  uint8 MCUF8_Fun_Cal_o1;              /* '<S21>/MCUF8_Fun_Cal' */
  uint8 MCUF8_Fun_Cal_o4;              /* '<S21>/MCUF8_Fun_Cal' */
  uint8 MCUF8_Fun_Cal_o5;              /* '<S21>/MCUF8_Fun_Cal' */
  uint8 MCUF8_Fun_Cal_o6;              /* '<S21>/MCUF8_Fun_Cal' */
  uint8 MCUF8_Fun_Cal_o7;              /* '<S21>/MCUF8_Fun_Cal' */
  uint8 MCUF8_Fun_Cal_o8;              /* '<S21>/MCUF8_Fun_Cal' */
  uint8 MCUF8_Fun_Cal_o9;              /* '<S21>/MCUF8_Fun_Cal' */
  uint8 MCUF8_Fun_Cal_o10;             /* '<S21>/MCUF8_Fun_Cal' */
  uint8 MCUF8_Fun_Cal_o11;             /* '<S21>/MCUF8_Fun_Cal' */
  uint8 MCUF8_Fun_Cal_o12;             /* '<S21>/MCUF8_Fun_Cal' */
  uint8 MCUF8_Fun_Cal_o13;             /* '<S21>/MCUF8_Fun_Cal' */
  uint8 MCUF8_Fun_Cal_o14;             /* '<S21>/MCUF8_Fun_Cal' */
  uint8 MCUF4_Fun_Cal_o1;              /* '<S19>/MCUF4_Fun_Cal' */
  uint8 MCUF4_Fun_Cal_o2;              /* '<S19>/MCUF4_Fun_Cal' */
  uint8 MCUF4_Fun_Cal_o6;              /* '<S19>/MCUF4_Fun_Cal' */
  uint8 MCUF4_Fun_Cal_o7;              /* '<S19>/MCUF4_Fun_Cal' */
  uint8 MCUF6_Fun_Cal_o1;              /* '<S20>/MCUF6_Fun_Cal' */
  uint8 MCUF6_Fun_Cal_o3;              /* '<S20>/MCUF6_Fun_Cal' */
  uint8 MCUF6_Fun_Cal_o5;              /* '<S20>/MCUF6_Fun_Cal' */
  uint8 MCUF6_Fun_Cal_o6;              /* '<S20>/MCUF6_Fun_Cal' */
  uint8 MCUF6_Fun_Cal_o7;              /* '<S20>/MCUF6_Fun_Cal' */
  uint8 MCUF6_Fun_Cal_o11;             /* '<S20>/MCUF6_Fun_Cal' */
  uint8 MCUF6_Fun_Cal_o12;             /* '<S20>/MCUF6_Fun_Cal' */
  uint8 MCUF2_Fun_Cal_o1;              /* '<S17>/MCUF2_Fun_Cal' */
  uint8 MCUF2_Fun_Cal_o8;              /* '<S17>/MCUF2_Fun_Cal' */
  uint8 MCUF2_Fun_Cal_o10;             /* '<S17>/MCUF2_Fun_Cal' */
  uint8 MCUF3_Fun_Cal_o1;              /* '<S18>/MCUF3_Fun_Cal' */
  uint8 MCUF3_Fun_Cal_o6;              /* '<S18>/MCUF3_Fun_Cal' */
  uint8 MCUF1_Fun_Cal_o1;              /* '<S16>/MCUF1_Fun_Cal' */
  uint8 MCUF1_Fun_Cal_o2;              /* '<S16>/MCUF1_Fun_Cal' */
  uint8 GCU1_Fun_Cal_o4;               /* '<S6>/GCU1_Fun_Cal' */
  uint8 GCU1_Fun_Cal_o6;               /* '<S6>/GCU1_Fun_Cal' */
  uint8 GCU1_Fun_Cal_o8;               /* '<S6>/GCU1_Fun_Cal' */
  uint8 GCU1_Fun_Cal_o9;               /* '<S6>/GCU1_Fun_Cal' */
  boolean MCUF_TCU1_Fun_Cal_o3;        /* '<S26>/MCUF_TCU1_Fun_Cal' */
  boolean GCU2_Fun_Cal_o3;             /* '<S7>/GCU2_Fun_Cal' */
  boolean MCUF8_Fun_Cal_o2;            /* '<S21>/MCUF8_Fun_Cal' */
  boolean MCUF6_Fun_Cal_o2;            /* '<S20>/MCUF6_Fun_Cal' */
  boolean MCUF6_Fun_Cal_o4;            /* '<S20>/MCUF6_Fun_Cal' */
  boolean MCUF6_Fun_Cal_o10;           /* '<S20>/MCUF6_Fun_Cal' */
  boolean MCUF2_Fun_Cal_o3;            /* '<S17>/MCUF2_Fun_Cal' */
  boolean MCUF2_Fun_Cal_o5;            /* '<S17>/MCUF2_Fun_Cal' */
  boolean MCUF2_Fun_Cal_o6;            /* '<S17>/MCUF2_Fun_Cal' */
  boolean MCUF2_Fun_Cal_o9;            /* '<S17>/MCUF2_Fun_Cal' */
  boolean MCUF1_Fun_Cal_o3;            /* '<S16>/MCUF1_Fun_Cal' */
  boolean MCUF1_Fun_Cal_o4;            /* '<S16>/MCUF1_Fun_Cal' */
  boolean MCUF1_Fun_Cal_o7;            /* '<S16>/MCUF1_Fun_Cal' */
  boolean GCU1_Fun_Cal_o5;             /* '<S6>/GCU1_Fun_Cal' */
  boolean GCU1_Fun_Cal_o7;             /* '<S6>/GCU1_Fun_Cal' */
} B;

/* Block signals (default storage) */
extern B rtB;

/*-
 * The generated code includes comments that allow you to trace directly
 * back to the appropriate location in the model.  The basic format
 * is <system>/block_name, where system is the system number (uniquely
 * assigned by Simulink) and block_name is the name of the block.
 *
 * Use the MATLAB hilite_system command to trace the generated code back
 * to the model.  For example,
 *
 * hilite_system('<S3>')    - opens system 3
 * hilite_system('<S3>/Kp') - opens and selects block Kp which resides in S3
 *
 * Here is the system hierarchy for this model
 *
 * '<Root>' : 'ASW_COM'
 * '<S1>'   : 'ASW_COM/BCM_peps_Fun'
 * '<S2>'   : 'ASW_COM/EMS1_Fun'
 * '<S3>'   : 'ASW_COM/EMS3_Fun'
 * '<S4>'   : 'ASW_COM/EMS5_Fun'
 * '<S5>'   : 'ASW_COM/EMS8_Fun'
 * '<S6>'   : 'ASW_COM/GCU1_Fun'
 * '<S7>'   : 'ASW_COM/GCU2_Fun'
 * '<S8>'   : 'ASW_COM/GCU3_Fun'
 * '<S9>'   : 'ASW_COM/GCU4_Fun'
 * '<S10>'  : 'ASW_COM/GCU_Inner1_Fun'
 * '<S11>'  : 'ASW_COM/GCU_Inner2_Fun'
 * '<S12>'  : 'ASW_COM/IPB4_Fun'
 * '<S13>'  : 'ASW_COM/IPB5_Fun'
 * '<S14>'  : 'ASW_COM/IPB7_Fun'
 * '<S15>'  : 'ASW_COM/IVI_timeAndGPS_Fun'
 * '<S16>'  : 'ASW_COM/MCUF1_Fun'
 * '<S17>'  : 'ASW_COM/MCUF2_Fun'
 * '<S18>'  : 'ASW_COM/MCUF3_Fun'
 * '<S19>'  : 'ASW_COM/MCUF4_Fun'
 * '<S20>'  : 'ASW_COM/MCUF6_Fun'
 * '<S21>'  : 'ASW_COM/MCUF8_Fun'
 * '<S22>'  : 'ASW_COM/MCUF_Inner1_Fun'
 * '<S23>'  : 'ASW_COM/MCUF_Inner2_Fun'
 * '<S24>'  : 'ASW_COM/MCUF_SelfHeat1_Fun'
 * '<S25>'  : 'ASW_COM/MCUF_SelfHeat2_Fun'
 * '<S26>'  : 'ASW_COM/MCUF_TCU1_Fun'
 * '<S27>'  : 'ASW_COM/MCUF_TCU2_Fun'
 * '<S28>'  : 'ASW_COM/MCUF_TCU3_Fun'
 * '<S29>'  : 'ASW_COM/PDCM10_Fun'
 * '<S30>'  : 'ASW_COM/PDCM1_Fun'
 * '<S31>'  : 'ASW_COM/PDCM21_Fun'
 * '<S32>'  : 'ASW_COM/PDCM22_Fun'
 * '<S33>'  : 'ASW_COM/PDCM24_Fun'
 * '<S34>'  : 'ASW_COM/PDCM30_Fun'
 * '<S35>'  : 'ASW_COM/PDCM5_Fun'
 * '<S36>'  : 'ASW_COM/PDCM_ACU_EPS_Fun'
 * '<S37>'  : 'ASW_COM/PDCM_Body_IC_Fun'
 * '<S38>'  : 'ASW_COM/PDCM_GCU_Fun'
 * '<S39>'  : 'ASW_COM/PDCM_IC_ACU_Fun'
 * '<S40>'  : 'ASW_COM/PDCM_OBD_Fun'
 * '<S41>'  : 'ASW_COM/PDCM_SelfHeat_Fun'
 * '<S42>'  : 'ASW_COM/TBOX_VehicleMode_Fun'
 */

/*-
 * Requirements for '<Root>': ASW_COM
 */
#endif                                 /* RTW_HEADER_ASW_COM_h_ */

/*
 * File trailer for generated code.
 *
 * [EOF]
 */
