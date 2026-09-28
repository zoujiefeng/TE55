#include "ComToutDet_Cfg.h"
#include "CAN01_DEF.h"
#include "CAN02_DEF.h"
#include "CAN03_DEF.h"

/**
 * @FuncName: ComToutDet_bMCU1_CANTimeout_DetFun
 * @Description:  Configure the CAN communication timeout check conditions for the MCU1
 * @Author: Wx
 * @Date: 2026-05-16 14:21:15
 * @LastEditTime: 
 */
boolean ComToutDet_bMCU1_CANTimeout_DetFun(void)
{
   uint8 bRet = 0u ;
   bRet = BSW_bRxTOutFlag_Can01_Rx01
        | BSW_bRxTOutFlag_Can01_Rx02 ;
   return bRet ;
}

/**
 * @FuncName: ComToutDet_bMCU2_CANTimeout_DetFun
 * @Description:  Configure the CAN communication timeout check conditions for the MCU2
 * @Author: Wx
 * @Date: 2026-05-16 14:21:24
 * @LastEditTime: 
 */
boolean ComToutDet_bMCU2_CANTimeout_DetFun(void)
{
   uint8 bRet = 0u ;
   bRet = BSW_bRxTOutFlag_Can01_Rx01
        | BSW_bRxTOutFlag_Can01_Rx02 ;
   return bRet ;
}

/**
 * @FuncName: ComToutDet_bACM_CANTimeout_DetFun
 * @Description:  Configure the CAN communication timeout check conditions for the ACM
 * @Author: Wx
 * @Date: 2026-05-16 14:21:36
 * @LastEditTime: 
 */
boolean ComToutDet_bACM_CANTimeout_DetFun(void)
{
   uint8 bRet = 0u ;
   bRet = BSW_bRxTOutFlag_Can01_Rx01
        | BSW_bRxTOutFlag_Can01_Rx02 ;
   return bRet ;
}

/**
 * @FuncName: ComToutDet_bEPS_CANTimeout_DetFun
 * @Description:  Configure the CAN communication timeout check conditions for the EPS
 * @Author: Wx
 * @Date: 2026-05-16 14:21:41
 * @LastEditTime: 
 */
boolean ComToutDet_bEPS_CANTimeout_DetFun(void)
{
   uint8 bRet = 0u ;
   bRet = BSW_bRxTOutFlag_Can01_Rx01
        | BSW_bRxTOutFlag_Can01_Rx02 ;
   return bRet ;
}

/**
 * @FuncName: ComToutDet_bPDU_CANTimeout_DetFun
 * @Description:  Configure the CAN communication timeout check conditions for the PDU
 * @Author: Wx
 * @Date: 2026-05-16 14:21:28
 * @LastEditTime: 
 */
boolean ComToutDet_bPDU_CANTimeout_DetFun(void)
{
   uint8 bRet = 0u ;
   bRet = BSW_bRxTOutFlag_Can01_Rx01
        | BSW_bRxTOutFlag_Can01_Rx02 ;
   return bRet ;
}

