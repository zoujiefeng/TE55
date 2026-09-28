/**
 * \file
 * \ingroup DEM_PRJ_TPL
 * See rba_DemObdBasic_IumprExtension.h_tpl for documentation
 */

#include "rba_DemObdBasic_Prv.h"
#include "rba_DemObdBasic_IumprExtension.h"

Std_ReturnType rba_DemObdBasic_Iumpr_PrepareDcmOutput(Dcm_OpStatusType OpStatus, uint8* Iumprdata, uint8* IumprdataBufferSize)
{
    /* Fill the buffer accordingly */

//    uint16_least numByteResp;
//    Std_ReturnType stReturn;
//
//    DEM_UNUSED_PARAM(OpStatus);
//    DEM_UNUSED_PARAM(IumprdataBufferSize);
//    DEM_UNUSED_PARAM(Iumprdata);
//    stReturn = E_OK;
//
//    rba_DemObdBasicTest_Iumpr_PrepareDcmOutPut_Called = TRUE;
//
//    /* Get length of response:
//          (((ALL_IUMPR_GROUPS-1)*2)+2)*2)+1  = (4 * ALL_IUMPR_GROUPS) + 1
//                   |          |  |  |  |  |
//                   |          |  |  |  |   \_ Byte #3: Number of data items
//                   |          |  |  |  |
//                   |          |  |  |   \____ calculate number of 8bit value from 16bit value
//                   |          |  |  |
//                   |          |  |   \_______ general denominator and ignition cycle counter
//                   |          |  |
//                   |          |   \__________ numerator and denominator
//                   |          |
//                   |           \_____________ group private not considered
//                   |
//                    \________________________ number of groups
//    */
//    numByteResp = (uint16_least)((4u * (uint8)DEM_CFG_NUM_ALL_IUMPR_GROUPS) + 1u);
//
//    /* Check size of response buffer */
//    if (numByteResp > (uint16_least) *IumprdataBufferSize)
//    {
//        stReturn = E_NOT_OK;
//    }
//
//    if (stReturn == E_OK)
//    {
//        uint16_least locCntr;
//        uint8_least idxGroup;
//        uint8_least idxDestBuf;
//        Dem_RatioIdType idxRatio;
//
//        /* Copy number of data items */
//        /* = 2 * (DIUMPR_numGroups - 1) + 1 + 1 = 2 * ALL_IUMPR_GROUPS */
//        /*  (Num + Den) * (number of groups - private group) + genDen + ignCntr */
//        Iumprdata[0] =  DEM_CFG_NUM_ALL_IUMPR_GROUPS * 2u;
//
//        locCntr = rba_DemObdBasic_Iumpr_GetGenDenomCntr();
//        Iumprdata[1] = (uint8)(locCntr >> CPU_TYPE_8);
//        Iumprdata[2] = (uint8)locCntr;
//
//        locCntr = rba_DemObdBasic_Iumpr_GetIgnCycCntr();
//        Iumprdata[3] = (uint8)(locCntr >> CPU_TYPE_8);
//        Iumprdata[4] = (uint8)locCntr;
//
//        /* Copy numerator and denominator of each group to buffer */
//
//        /* Point to starting value */
//        idxDestBuf = 5u;
//
//        /* Each IUMPR ratio is one logical unit (numerator+denominator),
//         * an outer lock might be more runtime efficient,
//         * but the lock is already within Dem_GetIUMPRRatioData() */
//
//        /* For all groups unless private (- 1)
//         * ***************************************************************
//         * PRECONDITION: The groups are sorted according output order,
//         * configuration output must assure this!
//         * ***************************************************************
//         * */
//        for( idxGroup=0; idxGroup < (DEM_CFG_NUM_ALL_IUMPR_GROUPS - 1u); idxGroup++)
//        {
//            uint16 locNum;
//            uint16 locDenom;
//            Dem_EventIdType retEventId;
//            uint8 retGroup;
//
//            /* default value is zero for unused component groups */
//            locNum    = 0u;
//            locDenom  = 0u;
//
//            idxRatio = rba_DemObdBasic_Ratio_GetMinRatioIdxForGroup(idxGroup);
//
//            Dem_GetIUMPRRatioData(idxRatio, &locNum, &locDenom, &retEventId, &retGroup);
//
//            /* copy high byte of numerator */
//            Iumprdata[idxDestBuf] = (uint8)(locNum >> CPU_TYPE_8);
//
//            /* copy low byte of numerator */
//            Iumprdata[idxDestBuf+1u] = (uint8)locNum;
//
//            /* copy high byte of denominator */
//            Iumprdata[idxDestBuf+2u] = (uint8)(locDenom >> CPU_TYPE_8);
//
//            /* copy low byte of denominator */
//            Iumprdata[idxDestBuf+3u] = (uint8)locDenom;
//
//          /* Increment to point next target location */
//          idxDestBuf ++;
//        }
//    }
//    return (stReturn);

    return E_OK;
}
