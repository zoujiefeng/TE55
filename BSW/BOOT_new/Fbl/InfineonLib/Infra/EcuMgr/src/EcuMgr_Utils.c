/*********************************************************************************************************************
*
* Description:     EcuM module implementation 
* FileName:        EcuMgr_Ultils.c
* Company:         INVT (www.invt.com.cn)
*
**********************************************************************************************************************
*
* COPYRIGHT RESERVED, Copyright INVT 2019. All rights reserved, also regarding any disposal,
* exploitation, reproduction, editing, distribution, as well as in the event of applications
* for industrial property rights.
*
**********************************************************************************************************************
* History:
**********************************************************************************************************************
* Author        Date            Comment
**********************************************************************************************************************
UCN1HC          10/18/2020
**********************************************************************************************************************/
/*********************************************************************************************************************
* Includes
*********************************************************************************************************************/
#include "EcuMgr_Utils.h"
/*********************************************************************************************************************
* Local Defines
*********************************************************************************************************************/
#define ECUMGR_UTIL_NUM_OF_MONTHS                      ((uint8)12)    /* Number of months each year */
#define ECUMGR_UTIL_START_POS_OF_YYYY_FORMAT           ((uint8)0)     /* Start Position of year information in Programming date format */
#define ECUMGR_UTIL_START_POS_OF_MM_FORMAT             ((uint8)2)     /* Start Position of month information in Programming date format */
#define ECUMGR_UTIL_START_POS_OF_DD_FORMAT             ((uint8)3)     /* Start Position of day information in Programming date format */
/*********************************************************************************************************************
* Local Macros
*********************************************************************************************************************/
#define ECUMGR_UTIL_CHECK_BCD_FORMAT(data)             ((((data) >> (uint8)4) < (uint8)10) && (((data) & (uint8)0x0F) < (uint8)10))  /* Check this byte is BCD format */
#define ECUMGR_UTIL_CONVERT_BCD_TO_UINT16(data)        ((((data) >> (uint16)4) * (uint16)10) + ((data) & (uint16)0x0F))                 /* Convert BCD to uint16, E.g: 0x85 to 85 */
/*********************************************************************************************************************
* Local Types
*********************************************************************************************************************/
/* [$Satisfies $LEAR_FBL_DD_EcuMgr 005] */
static Std_ReturnType   EcuMgr_Util_ConvertBCD2Uint16(const uint8* data, uint8 len, uint16* CvtVal)
{
    Std_ReturnType retVal = E_OK;
    uint8   idx = 0;

    *CvtVal = 0;

    for(idx = 0; idx < len; idx++)
    {
        /* Check this bytes is BCD format */
        if(ECUMGR_UTIL_CHECK_BCD_FORMAT(data[idx]))
        {
            /* Calculate convert value. */
            *CvtVal = (*CvtVal * (uint16)100) + (uint16)(ECUMGR_UTIL_CONVERT_BCD_TO_UINT16((uint16)data[idx]));
        }
        else
        {
            retVal = E_NOT_OK;
            break;
        }
    }

    return retVal;
}

/* [$Satisfies $LEAR_FBL_DD_EcuMgr 006] */
/*
 * @brief Check date is valid
 *
 * @param in:
 *          year:
 *          month:
 *          day:
 *
 * @return Std_ReturnType
 * */
static Std_ReturnType EcuMgr_Util_IsDateValid(uint16 year, uint16 month, uint16 day)
{
    Std_ReturnType retVal = E_NOT_OK;
    uint16    maxDay = 0;

    /* Indicate maximum number of days each month */
    static const uint16 EcuMgr_Util_MaxNumOfDaysEachMonthTbl[ECUMGR_UTIL_NUM_OF_MONTHS] =
    {
        31,     /* January */
        29,     /* February - It shall be 28 if this year is not Leap year*/
        31,     /* March */
        30,     /* April */
        31,     /* May */
        30,     /* June */
        31,     /* July */
        31,     /* August */
        30,     /* September */
        31,     /* October */
        30,     /* November */
        31      /* December */
    };

    /* In case this month is February */
    if((uint16)2 == month)
    {
        /* Check this year is Leap year */
        if ((((uint16)0 == (year % (uint16)4))  && ((year % (uint16)100) != (uint16)0))
                || ((uint16)0 == (year % (uint16)400)))
        {
            maxDay = EcuMgr_Util_MaxNumOfDaysEachMonthTbl[month - (uint16)1];
        }
        else
        {
            maxDay = EcuMgr_Util_MaxNumOfDaysEachMonthTbl[month - (uint16)1] - 1u;
        }
    }
    /* In case month is valid */
    else if((month <= ECUMGR_UTIL_NUM_OF_MONTHS) && (month > (uint16)0))
    {
        maxDay = EcuMgr_Util_MaxNumOfDaysEachMonthTbl[month - (uint16)1];
    }
    else
    {
        /* Do nothing */
    }

    if((maxDay >= day) && (day > 0u))
    {
        retVal = E_OK;
    }

    return retVal;
}
/*********************************************************************************************************************
* Exported Functions Implementation
*********************************************************************************************************************/
/* [$Satisfies $LEAR_FBL_DD_EcuMgr 121] */
/*
 * @brief Check Programming Date is valid or not
 *
 * @param in:
 *          date: Information about Programming date
 *          len:  Length of date, it shall be ECUMGR_UTIL_LEN_OF_YYYYMMDD_FORMAT when
 *                date's format is YYYY_MM_DD (4bytes) and ECUMGR_UTIL_LEN_OF_YYMMDD_FORMAT
 *                when date's format is YY_MM_DD (3bytes).
 *
 * @return Std_ReturnType
 * */
Std_ReturnType EcuMgr_Util_IsDateFormatValid(const uint8* date, uint8 len)
{
    Std_ReturnType retVal = E_NOT_OK;
    uint8   fullDateFormat[ECUMGR_UTIL_LEN_OF_YYYYMMDD_FORMAT] = {0, 0, 0, 0};
    uint8   idx = 0;
    uint16  year = 0;
    uint16  month = 0;
    uint16  day = 0;

    if(((uint8)ECUMGR_UTIL_LEN_OF_YYYYMMDD_FORMAT == len) || ((uint8)ECUMGR_UTIL_LEN_OF_YYMMDD_FORMAT == len))
    {
        /* Full fill format data of date.
         * This action is necessary in case format if date is YYMMDD (3 bytes) */
        for(idx = (uint8)ECUMGR_UTIL_LEN_OF_YYYYMMDD_FORMAT - len; idx < (uint8)ECUMGR_UTIL_LEN_OF_YYYYMMDD_FORMAT; idx++)
        {
            fullDateFormat[idx] = date[idx - (uint8)ECUMGR_UTIL_LEN_OF_YYYYMMDD_FORMAT + len];
        }

        /* Calculate year */
        retVal = EcuMgr_Util_ConvertBCD2Uint16((const uint8*)fullDateFormat, ECUMGR_UTIL_START_POS_OF_MM_FORMAT - ECUMGR_UTIL_START_POS_OF_YYYY_FORMAT, &year);

        /* Calculate month */
        retVal = (retVal == E_OK) ? EcuMgr_Util_ConvertBCD2Uint16((const uint8*)(&fullDateFormat[ECUMGR_UTIL_START_POS_OF_MM_FORMAT]), ECUMGR_UTIL_START_POS_OF_DD_FORMAT - ECUMGR_UTIL_START_POS_OF_MM_FORMAT, &month) : retVal;

        /* Calculate day */
        retVal = (retVal == E_OK) ? EcuMgr_Util_ConvertBCD2Uint16((const uint8*)(&fullDateFormat[ECUMGR_UTIL_START_POS_OF_DD_FORMAT]), (uint8)ECUMGR_UTIL_LEN_OF_YYYYMMDD_FORMAT - ECUMGR_UTIL_START_POS_OF_DD_FORMAT, &day) : retVal;

        /* Check date is valid */
        retVal = (retVal == E_OK) ? EcuMgr_Util_IsDateValid(year, month, day) : retVal;
    }

    return retVal;
}
