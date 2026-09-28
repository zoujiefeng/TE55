function fault(void)
%*******************************************************************************
%* File name     : fault.m                                                    
%* Project       :                                                              
%* Description   :                                                              
%* Author        : faultoil2faultm                                              
%* Service       :                                                              
%*******************************************************************************
%* :      1.0   24 Sep 2026 17:33:52     n%* !Trace_To     : V0X NT 06 XXXXX 01: DEV REQ: MOD/YY/00.01 
%*******************************************************************************

% **************************** Init script parameters **************************
Modified_Data{1} = ' Object Name  |Modified Data  |Old Value  |New Value'; % Output file Header
% ******************************** Main Process ********************************

% BSW_HW_FPGA_IGBT_HDetn
try
  if (strcmp(class(evalin('base','BSW_HW_FPGA_IGBT_HDetn')),'mpt.Signal'))
      OriginalConf = SaveOriginalConf('BSW_HW_FPGA_IGBT_HDetn');
      SetNewConfiguration('BSW_HW_','FPGA_IGBT_H','Detn')
      Modified_Data = CheckConfiguration(OriginalConf,'BSW_HW_FPGA_IGBT_HDetn',Modified_Data);
      CreateSignal('BSW_HW_','FPGA_IGBT_H','Logged');
      CreateSignal('BSW_HW_','FPGA_IGBT_H','Detected');
      CreateSignal('BSW_HW_','','Logged');
      CreateSignal('BSW_HW_','','Detected');
  end
catch
end

% BSW_HW_FPGA_IGBT_LDetn
try
  if (strcmp(class(evalin('base','BSW_HW_FPGA_IGBT_LDetn')),'mpt.Signal'))
      OriginalConf = SaveOriginalConf('BSW_HW_FPGA_IGBT_LDetn');
      SetNewConfiguration('BSW_HW_','FPGA_IGBT_L','Detn')
      Modified_Data = CheckConfiguration(OriginalConf,'BSW_HW_FPGA_IGBT_LDetn',Modified_Data);
      CreateSignal('BSW_HW_','FPGA_IGBT_L','Logged');
      CreateSignal('BSW_HW_','FPGA_IGBT_L','Detected');
      CreateSignal('BSW_HW_','','Logged');
      CreateSignal('BSW_HW_','','Detected');
  end
catch
end

% BSW_HW_FPGA_OverUnderCurUIDetn
try
  if (strcmp(class(evalin('base','BSW_HW_FPGA_OverUnderCurUIDetn')),'mpt.Signal'))
      OriginalConf = SaveOriginalConf('BSW_HW_FPGA_OverUnderCurUIDetn');
      SetNewConfiguration('BSW_HW_','FPGA_OverUnderCurUI','Detn')
      Modified_Data = CheckConfiguration(OriginalConf,'BSW_HW_FPGA_OverUnderCurUIDetn',Modified_Data);
      CreateSignal('BSW_HW_','FPGA_OverUnderCurUI','Logged');
      CreateSignal('BSW_HW_','FPGA_OverUnderCurUI','Detected');
      CreateSignal('BSW_HW_','','Logged');
      CreateSignal('BSW_HW_','','Detected');
  end
catch
end

% BSW_HW_FPGA_OverUnderCurVIDetn
try
  if (strcmp(class(evalin('base','BSW_HW_FPGA_OverUnderCurVIDetn')),'mpt.Signal'))
      OriginalConf = SaveOriginalConf('BSW_HW_FPGA_OverUnderCurVIDetn');
      SetNewConfiguration('BSW_HW_','FPGA_OverUnderCurVI','Detn')
      Modified_Data = CheckConfiguration(OriginalConf,'BSW_HW_FPGA_OverUnderCurVIDetn',Modified_Data);
      CreateSignal('BSW_HW_','FPGA_OverUnderCurVI','Logged');
      CreateSignal('BSW_HW_','FPGA_OverUnderCurVI','Detected');
      CreateSignal('BSW_HW_','','Logged');
      CreateSignal('BSW_HW_','','Detected');
  end
catch
end

% BSW_HW_FPGA_OverUnderCurWIDetn
try
  if (strcmp(class(evalin('base','BSW_HW_FPGA_OverUnderCurWIDetn')),'mpt.Signal'))
      OriginalConf = SaveOriginalConf('BSW_HW_FPGA_OverUnderCurWIDetn');
      SetNewConfiguration('BSW_HW_','FPGA_OverUnderCurWI','Detn')
      Modified_Data = CheckConfiguration(OriginalConf,'BSW_HW_FPGA_OverUnderCurWIDetn',Modified_Data);
      CreateSignal('BSW_HW_','FPGA_OverUnderCurWI','Logged');
      CreateSignal('BSW_HW_','FPGA_OverUnderCurWI','Detected');
      CreateSignal('BSW_HW_','','Logged');
      CreateSignal('BSW_HW_','','Detected');
  end
catch
end

% BSW_HW_OCDataNotRationalDetn
try
  if (strcmp(class(evalin('base','BSW_HW_OCDataNotRationalDetn')),'mpt.Signal'))
      OriginalConf = SaveOriginalConf('BSW_HW_OCDataNotRationalDetn');
      SetNewConfiguration('BSW_HW_','OCDataNotRational','Detn')
      Modified_Data = CheckConfiguration(OriginalConf,'BSW_HW_OCDataNotRationalDetn',Modified_Data);
      CreateSignal('BSW_HW_','OCDataNotRational','Logged');
      CreateSignal('BSW_HW_','OCDataNotRational','Detected');
      CreateSignal('BSW_HW_','','Logged');
      CreateSignal('BSW_HW_','','Detected');
  end
catch
end

% BSW_HW2_FPGA_OverVoltVBatDetn
try
  if (strcmp(class(evalin('base','BSW_HW2_FPGA_OverVoltVBatDetn')),'mpt.Signal'))
      OriginalConf = SaveOriginalConf('BSW_HW2_FPGA_OverVoltVBatDetn');
      SetNewConfiguration('BSW_HW2_','FPGA_OverVoltVBat','Detn')
      Modified_Data = CheckConfiguration(OriginalConf,'BSW_HW2_FPGA_OverVoltVBatDetn',Modified_Data);
      CreateSignal('BSW_HW2_','FPGA_OverVoltVBat','Logged');
      CreateSignal('BSW_HW2_','FPGA_OverVoltVBat','Detected');
      CreateSignal('BSW_HW2_','','Logged');
      CreateSignal('BSW_HW2_','','Detected');
  end
catch
end

% BSW_HW2_SelfTst_InterLockDetn
try
  if (strcmp(class(evalin('base','BSW_HW2_SelfTst_InterLockDetn')),'mpt.Signal'))
      OriginalConf = SaveOriginalConf('BSW_HW2_SelfTst_InterLockDetn');
      SetNewConfiguration('BSW_HW2_','SelfTst_InterLock','Detn')
      Modified_Data = CheckConfiguration(OriginalConf,'BSW_HW2_SelfTst_InterLockDetn',Modified_Data);
      CreateSignal('BSW_HW2_','SelfTst_InterLock','Logged');
      CreateSignal('BSW_HW2_','SelfTst_InterLock','Detected');
      CreateSignal('BSW_HW2_','','Logged');
      CreateSignal('BSW_HW2_','','Detected');
  end
catch
end

% BSW_COM_BusOff_CAN1Detn
try
  if (strcmp(class(evalin('base','BSW_COM_BusOff_CAN1Detn')),'mpt.Signal'))
      OriginalConf = SaveOriginalConf('BSW_COM_BusOff_CAN1Detn');
      SetNewConfiguration('BSW_COM_','BusOff_CAN1','Detn')
      Modified_Data = CheckConfiguration(OriginalConf,'BSW_COM_BusOff_CAN1Detn',Modified_Data);
      CreateSignal('BSW_COM_','BusOff_CAN1','Logged');
      CreateSignal('BSW_COM_','BusOff_CAN1','Detected');
      CreateSignal('BSW_COM_','','Logged');
      CreateSignal('BSW_COM_','','Detected');
  end
catch
end

% BSW_COM_TimoutRxVCUDetn
try
  if (strcmp(class(evalin('base','BSW_COM_TimoutRxVCUDetn')),'mpt.Signal'))
      OriginalConf = SaveOriginalConf('BSW_COM_TimoutRxVCUDetn');
      SetNewConfiguration('BSW_COM_','TimoutRxVCU','Detn')
      Modified_Data = CheckConfiguration(OriginalConf,'BSW_COM_TimoutRxVCUDetn',Modified_Data);
      CreateSignal('BSW_COM_','TimoutRxVCU','Logged');
      CreateSignal('BSW_COM_','TimoutRxVCU','Detected');
      CreateSignal('BSW_COM_','','Logged');
      CreateSignal('BSW_COM_','','Detected');
  end
catch
end

% BSW_COM_RcErrRxVCUDetn
try
  if (strcmp(class(evalin('base','BSW_COM_RcErrRxVCUDetn')),'mpt.Signal'))
      OriginalConf = SaveOriginalConf('BSW_COM_RcErrRxVCUDetn');
      SetNewConfiguration('BSW_COM_','RcErrRxVCU','Detn')
      Modified_Data = CheckConfiguration(OriginalConf,'BSW_COM_RcErrRxVCUDetn',Modified_Data);
      CreateSignal('BSW_COM_','RcErrRxVCU','Logged');
      CreateSignal('BSW_COM_','RcErrRxVCU','Detected');
      CreateSignal('BSW_COM_','','Logged');
      CreateSignal('BSW_COM_','','Detected');
  end
catch
end

% FSEVBLV_OverVoltageDetn
try
  if (strcmp(class(evalin('base','FSEVBLV_OverVoltageDetn')),'mpt.Signal'))
      OriginalConf = SaveOriginalConf('FSEVBLV_OverVoltageDetn');
      SetNewConfiguration('FSEVBLV_','OverVoltage','Detn')
      Modified_Data = CheckConfiguration(OriginalConf,'FSEVBLV_OverVoltageDetn',Modified_Data);
      CreateSignal('FSEVBLV_','OverVoltage','Logged');
      CreateSignal('FSEVBLV_','OverVoltage','Detected');
      CreateSignal('FSEVBLV_','','Logged');
      CreateSignal('FSEVBLV_','','Detected');
  end
catch
end

% FSEVBLV_UnderVoltageDetn
try
  if (strcmp(class(evalin('base','FSEVBLV_UnderVoltageDetn')),'mpt.Signal'))
      OriginalConf = SaveOriginalConf('FSEVBLV_UnderVoltageDetn');
      SetNewConfiguration('FSEVBLV_','UnderVoltage','Detn')
      Modified_Data = CheckConfiguration(OriginalConf,'FSEVBLV_UnderVoltageDetn',Modified_Data);
      CreateSignal('FSEVBLV_','UnderVoltage','Logged');
      CreateSignal('FSEVBLV_','UnderVoltage','Detected');
      CreateSignal('FSEVBLV_','','Logged');
      CreateSignal('FSEVBLV_','','Detected');
  end
catch
end

% FSEVBLV_P5VRefADCFltDetn
try
  if (strcmp(class(evalin('base','FSEVBLV_P5VRefADCFltDetn')),'mpt.Signal'))
      OriginalConf = SaveOriginalConf('FSEVBLV_P5VRefADCFltDetn');
      SetNewConfiguration('FSEVBLV_','P5VRefADCFlt','Detn')
      Modified_Data = CheckConfiguration(OriginalConf,'FSEVBLV_P5VRefADCFltDetn',Modified_Data);
      CreateSignal('FSEVBLV_','P5VRefADCFlt','Logged');
      CreateSignal('FSEVBLV_','P5VRefADCFlt','Detected');
      CreateSignal('FSEVBLV_','','Logged');
      CreateSignal('FSEVBLV_','','Detected');
  end
catch
end

% FSEVBHV_OverVoltageDetn
try
  if (strcmp(class(evalin('base','FSEVBHV_OverVoltageDetn')),'mpt.Signal'))
      OriginalConf = SaveOriginalConf('FSEVBHV_OverVoltageDetn');
      SetNewConfiguration('FSEVBHV_','OverVoltage','Detn')
      Modified_Data = CheckConfiguration(OriginalConf,'FSEVBHV_OverVoltageDetn',Modified_Data);
      CreateSignal('FSEVBHV_','OverVoltage','Logged');
      CreateSignal('FSEVBHV_','OverVoltage','Detected');
      CreateSignal('FSEVBHV_','','Logged');
      CreateSignal('FSEVBHV_','','Detected');
  end
catch
end

% FSEVBHV_UnderVoltageDetn
try
  if (strcmp(class(evalin('base','FSEVBHV_UnderVoltageDetn')),'mpt.Signal'))
      OriginalConf = SaveOriginalConf('FSEVBHV_UnderVoltageDetn');
      SetNewConfiguration('FSEVBHV_','UnderVoltage','Detn')
      Modified_Data = CheckConfiguration(OriginalConf,'FSEVBHV_UnderVoltageDetn',Modified_Data);
      CreateSignal('FSEVBHV_','UnderVoltage','Logged');
      CreateSignal('FSEVBHV_','UnderVoltage','Detected');
      CreateSignal('FSEVBHV_','','Logged');
      CreateSignal('FSEVBHV_','','Detected');
  end
catch
end

% FSEVBHV_VoltageVccDetn
try
  if (strcmp(class(evalin('base','FSEVBHV_VoltageVccDetn')),'mpt.Signal'))
      OriginalConf = SaveOriginalConf('FSEVBHV_VoltageVccDetn');
      SetNewConfiguration('FSEVBHV_','VoltageVcc','Detn')
      Modified_Data = CheckConfiguration(OriginalConf,'FSEVBHV_VoltageVccDetn',Modified_Data);
      CreateSignal('FSEVBHV_','VoltageVcc','Logged');
      CreateSignal('FSEVBHV_','VoltageVcc','Detected');
      CreateSignal('FSEVBHV_','','Logged');
      CreateSignal('FSEVBHV_','','Detected');
  end
catch
end

% FSEVBHV_VoltageGndDetn
try
  if (strcmp(class(evalin('base','FSEVBHV_VoltageGndDetn')),'mpt.Signal'))
      OriginalConf = SaveOriginalConf('FSEVBHV_VoltageGndDetn');
      SetNewConfiguration('FSEVBHV_','VoltageGnd','Detn')
      Modified_Data = CheckConfiguration(OriginalConf,'FSEVBHV_VoltageGndDetn',Modified_Data);
      CreateSignal('FSEVBHV_','VoltageGnd','Logged');
      CreateSignal('FSEVBHV_','VoltageGnd','Detected');
      CreateSignal('FSEVBHV_','','Logged');
      CreateSignal('FSEVBHV_','','Detected');
  end
catch
end

% FSEVETA_IgbtTempRationalDetn
try
  if (strcmp(class(evalin('base','FSEVETA_IgbtTempRationalDetn')),'mpt.Signal'))
      OriginalConf = SaveOriginalConf('FSEVETA_IgbtTempRationalDetn');
      SetNewConfiguration('FSEVETA_','IgbtTempRational','Detn')
      Modified_Data = CheckConfiguration(OriginalConf,'FSEVETA_IgbtTempRationalDetn',Modified_Data);
      CreateSignal('FSEVETA_','IgbtTempRational','Logged');
      CreateSignal('FSEVETA_','IgbtTempRational','Detected');
      CreateSignal('FSEVETA_','','Logged');
      CreateSignal('FSEVETA_','','Detected');
  end
catch
end

% FSEVETA_OverTempNTC1CmdBoardDetn
try
  if (strcmp(class(evalin('base','FSEVETA_OverTempNTC1CmdBoardDetn')),'mpt.Signal'))
      OriginalConf = SaveOriginalConf('FSEVETA_OverTempNTC1CmdBoardDetn');
      SetNewConfiguration('FSEVETA_','OverTempNTC1CmdBoard','Detn')
      Modified_Data = CheckConfiguration(OriginalConf,'FSEVETA_OverTempNTC1CmdBoardDetn',Modified_Data);
      CreateSignal('FSEVETA_','OverTempNTC1CmdBoard','Logged');
      CreateSignal('FSEVETA_','OverTempNTC1CmdBoard','Detected');
      CreateSignal('FSEVETA_','','Logged');
      CreateSignal('FSEVETA_','','Detected');
  end
catch
end

% FSEVETA_OverTempDrvLeftDetn
try
  if (strcmp(class(evalin('base','FSEVETA_OverTempDrvLeftDetn')),'mpt.Signal'))
      OriginalConf = SaveOriginalConf('FSEVETA_OverTempDrvLeftDetn');
      SetNewConfiguration('FSEVETA_Over','TempDrvLeft','Detn')
      Modified_Data = CheckConfiguration(OriginalConf,'FSEVETA_OverTempDrvLeftDetn',Modified_Data);
      CreateSignal('FSEVETA_Over','TempDrvLeft','Logged');
      CreateSignal('FSEVETA_Over','TempDrvLeft','Detected');
      CreateSignal('FSEVETA_Over','','Logged');
      CreateSignal('FSEVETA_Over','','Detected');
  end
catch
end

% FSEVETA_OverTempIgbtLeftDetn
try
  if (strcmp(class(evalin('base','FSEVETA_OverTempIgbtLeftDetn')),'mpt.Signal'))
      OriginalConf = SaveOriginalConf('FSEVETA_OverTempIgbtLeftDetn');
      SetNewConfiguration('FSEVETA_Over','TempIgbtLeft','Detn')
      Modified_Data = CheckConfiguration(OriginalConf,'FSEVETA_OverTempIgbtLeftDetn',Modified_Data);
      CreateSignal('FSEVETA_Over','TempIgbtLeft','Logged');
      CreateSignal('FSEVETA_Over','TempIgbtLeft','Detected');
      CreateSignal('FSEVETA_Over','','Logged');
      CreateSignal('FSEVETA_Over','','Detected');
  end
catch
end

% FSMTMTA_OverTempWdgHead1Detn
try
  if (strcmp(class(evalin('base','FSMTMTA_OverTempWdgHead1Detn')),'mpt.Signal'))
      OriginalConf = SaveOriginalConf('FSMTMTA_OverTempWdgHead1Detn');
      SetNewConfiguration('FSMTMTA_Over','TempWdgHead1','Detn')
      Modified_Data = CheckConfiguration(OriginalConf,'FSMTMTA_OverTempWdgHead1Detn',Modified_Data);
      CreateSignal('FSMTMTA_Over','TempWdgHead1','Logged');
      CreateSignal('FSMTMTA_Over','TempWdgHead1','Detected');
      CreateSignal('FSMTMTA_Over','','Logged');
      CreateSignal('FSMTMTA_Over','','Detected');
  end
catch
end

% FSMTMTA_OverTempWdgHead2Detn
try
  if (strcmp(class(evalin('base','FSMTMTA_OverTempWdgHead2Detn')),'mpt.Signal'))
      OriginalConf = SaveOriginalConf('FSMTMTA_OverTempWdgHead2Detn');
      SetNewConfiguration('FSMTMTA_Over','TempWdgHead2','Detn')
      Modified_Data = CheckConfiguration(OriginalConf,'FSMTMTA_OverTempWdgHead2Detn',Modified_Data);
      CreateSignal('FSMTMTA_Over','TempWdgHead2','Logged');
      CreateSignal('FSMTMTA_Over','TempWdgHead2','Detected');
      CreateSignal('FSMTMTA_Over','','Logged');
      CreateSignal('FSMTMTA_Over','','Detected');
  end
catch
end

% FSSMACS_AkdFailFlagDetn
try
  if (strcmp(class(evalin('base','FSSMACS_AkdFailFlagDetn')),'mpt.Signal'))
      OriginalConf = SaveOriginalConf('FSSMACS_AkdFailFlagDetn');
      SetNewConfiguration('FSSMACS_','AkdFailFlag','Detn')
      Modified_Data = CheckConfiguration(OriginalConf,'FSSMACS_AkdFailFlagDetn',Modified_Data);
      CreateSignal('FSSMACS_','AkdFailFlag','Logged');
      CreateSignal('FSSMACS_','AkdFailFlag','Detected');
      CreateSignal('FSSMACS_','','Logged');
      CreateSignal('FSSMACS_','','Detected');
  end
catch
end

% FSMTRDG_ExcGenerationDetn
try
  if (strcmp(class(evalin('base','FSMTRDG_ExcGenerationDetn')),'mpt.Signal'))
      OriginalConf = SaveOriginalConf('FSMTRDG_ExcGenerationDetn');
      SetNewConfiguration('FSMTRDG_','ExcGeneration','Detn')
      Modified_Data = CheckConfiguration(OriginalConf,'FSMTRDG_ExcGenerationDetn',Modified_Data);
      CreateSignal('FSMTRDG_','ExcGeneration','Logged');
      CreateSignal('FSMTRDG_','ExcGeneration','Detected');
      CreateSignal('FSMTRDG_','','Logged');
      CreateSignal('FSMTRDG_','','Detected');
  end
catch
end

% FSMTRDG_SinCosHLVccDetn
try
  if (strcmp(class(evalin('base','FSMTRDG_SinCosHLVccDetn')),'mpt.Signal'))
      OriginalConf = SaveOriginalConf('FSMTRDG_SinCosHLVccDetn');
      SetNewConfiguration('FSMTRDG_','SinCosHLVcc','Detn')
      Modified_Data = CheckConfiguration(OriginalConf,'FSMTRDG_SinCosHLVccDetn',Modified_Data);
      CreateSignal('FSMTRDG_','SinCosHLVcc','Logged');
      CreateSignal('FSMTRDG_','SinCosHLVcc','Detected');
      CreateSignal('FSMTRDG_','','Logged');
      CreateSignal('FSMTRDG_','','Detected');
  end
catch
end

% FSMTRDG_SinCosHLGndDetn
try
  if (strcmp(class(evalin('base','FSMTRDG_SinCosHLGndDetn')),'mpt.Signal'))
      OriginalConf = SaveOriginalConf('FSMTRDG_SinCosHLGndDetn');
      SetNewConfiguration('FSMTRDG_','SinCosHLGnd','Detn')
      Modified_Data = CheckConfiguration(OriginalConf,'FSMTRDG_SinCosHLGndDetn',Modified_Data);
      CreateSignal('FSMTRDG_','SinCosHLGnd','Logged');
      CreateSignal('FSMTRDG_','SinCosHLGnd','Detected');
      CreateSignal('FSMTRDG_','','Logged');
      CreateSignal('FSMTRDG_','','Detected');
  end
catch
end

% FSMTRDG_SinCosHLOpenDetn
try
  if (strcmp(class(evalin('base','FSMTRDG_SinCosHLOpenDetn')),'mpt.Signal'))
      OriginalConf = SaveOriginalConf('FSMTRDG_SinCosHLOpenDetn');
      SetNewConfiguration('FSMTRDG_','SinCosHLOpen','Detn')
      Modified_Data = CheckConfiguration(OriginalConf,'FSMTRDG_SinCosHLOpenDetn',Modified_Data);
      CreateSignal('FSMTRDG_','SinCosHLOpen','Logged');
      CreateSignal('FSMTRDG_','SinCosHLOpen','Detected');
      CreateSignal('FSMTRDG_','','Logged');
      CreateSignal('FSMTRDG_','','Detected');
  end
catch
end

% FSEVETA_TempIgbtLeftGndDetn
try
  if (strcmp(class(evalin('base','FSEVETA_TempIgbtLeftGndDetn')),'mpt.Signal'))
      OriginalConf = SaveOriginalConf('FSEVETA_TempIgbtLeftGndDetn');
      SetNewConfiguration('FSEVETA_Temp','IgbtLeftGnd','Detn')
      Modified_Data = CheckConfiguration(OriginalConf,'FSEVETA_TempIgbtLeftGndDetn',Modified_Data);
      CreateSignal('FSEVETA_Temp','IgbtLeftGnd','Logged');
      CreateSignal('FSEVETA_Temp','IgbtLeftGnd','Detected');
      CreateSignal('FSEVETA_Temp','','Logged');
      CreateSignal('FSEVETA_Temp','','Detected');
  end
catch
end

% FSEVETA_TempIgbtLeftVccDetn
try
  if (strcmp(class(evalin('base','FSEVETA_TempIgbtLeftVccDetn')),'mpt.Signal'))
      OriginalConf = SaveOriginalConf('FSEVETA_TempIgbtLeftVccDetn');
      SetNewConfiguration('FSEVETA_Temp','IgbtLeftVcc','Detn')
      Modified_Data = CheckConfiguration(OriginalConf,'FSEVETA_TempIgbtLeftVccDetn',Modified_Data);
      CreateSignal('FSEVETA_Temp','IgbtLeftVcc','Logged');
      CreateSignal('FSEVETA_Temp','IgbtLeftVcc','Detected');
      CreateSignal('FSEVETA_Temp','','Logged');
      CreateSignal('FSEVETA_Temp','','Detected');
  end
catch
end

% FSMTMTA_TempWindingHead1GndDetn
try
  if (strcmp(class(evalin('base','FSMTMTA_TempWindingHead1GndDetn')),'mpt.Signal'))
      OriginalConf = SaveOriginalConf('FSMTMTA_TempWindingHead1GndDetn');
      SetNewConfiguration('FSMTMTA_Temp','WindingHead1Gnd','Detn')
      Modified_Data = CheckConfiguration(OriginalConf,'FSMTMTA_TempWindingHead1GndDetn',Modified_Data);
      CreateSignal('FSMTMTA_Temp','WindingHead1Gnd','Logged');
      CreateSignal('FSMTMTA_Temp','WindingHead1Gnd','Detected');
      CreateSignal('FSMTMTA_Temp','','Logged');
      CreateSignal('FSMTMTA_Temp','','Detected');
  end
catch
end

% FSMTMTA_TempWindingHead1VccDetn
try
  if (strcmp(class(evalin('base','FSMTMTA_TempWindingHead1VccDetn')),'mpt.Signal'))
      OriginalConf = SaveOriginalConf('FSMTMTA_TempWindingHead1VccDetn');
      SetNewConfiguration('FSMTMTA_Temp','WindingHead1Vcc','Detn')
      Modified_Data = CheckConfiguration(OriginalConf,'FSMTMTA_TempWindingHead1VccDetn',Modified_Data);
      CreateSignal('FSMTMTA_Temp','WindingHead1Vcc','Logged');
      CreateSignal('FSMTMTA_Temp','WindingHead1Vcc','Detected');
      CreateSignal('FSMTMTA_Temp','','Logged');
      CreateSignal('FSMTMTA_Temp','','Detected');
  end
catch
end

% FTEVEIT_EstOverTempDetn
try
  if (strcmp(class(evalin('base','FTEVEIT_EstOverTempDetn')),'mpt.Signal'))
      OriginalConf = SaveOriginalConf('FTEVEIT_EstOverTempDetn');
      SetNewConfiguration('FTEVEIT_','EstOverTemp','Detn')
      Modified_Data = CheckConfiguration(OriginalConf,'FTEVEIT_EstOverTempDetn',Modified_Data);
      CreateSignal('FTEVEIT_','EstOverTemp','Logged');
      CreateSignal('FTEVEIT_','EstOverTemp','Detected');
      CreateSignal('FTEVEIT_','','Logged');
      CreateSignal('FTEVEIT_','','Detected');
  end
catch
end

% FTMTLCS_CurrentSumErrorDetn
try
  if (strcmp(class(evalin('base','FTMTLCS_CurrentSumErrorDetn')),'mpt.Signal'))
      OriginalConf = SaveOriginalConf('FTMTLCS_CurrentSumErrorDetn');
      SetNewConfiguration('FTMTLCS_','CurrentSumError','Detn')
      Modified_Data = CheckConfiguration(OriginalConf,'FTMTLCS_CurrentSumErrorDetn',Modified_Data);
      CreateSignal('FTMTLCS_','CurrentSumError','Logged');
      CreateSignal('FTMTLCS_','CurrentSumError','Detected');
      CreateSignal('FTMTLCS_','','Logged');
      CreateSignal('FTMTLCS_','','Detected');
  end
catch
end

% FTMTLCS_CurSenrPhaU_GNDDetn
try
  if (strcmp(class(evalin('base','FTMTLCS_CurSenrPhaU_GNDDetn')),'mpt.Signal'))
      OriginalConf = SaveOriginalConf('FTMTLCS_CurSenrPhaU_GNDDetn');
      SetNewConfiguration('FTMTLCS_','CurSenrPhaU_GND','Detn')
      Modified_Data = CheckConfiguration(OriginalConf,'FTMTLCS_CurSenrPhaU_GNDDetn',Modified_Data);
      CreateSignal('FTMTLCS_','CurSenrPhaU_GND','Logged');
      CreateSignal('FTMTLCS_','CurSenrPhaU_GND','Detected');
      CreateSignal('FTMTLCS_','','Logged');
      CreateSignal('FTMTLCS_','','Detected');
  end
catch
end

% FTMTLCS_CurSenrPhaU_VCCDetn
try
  if (strcmp(class(evalin('base','FTMTLCS_CurSenrPhaU_VCCDetn')),'mpt.Signal'))
      OriginalConf = SaveOriginalConf('FTMTLCS_CurSenrPhaU_VCCDetn');
      SetNewConfiguration('FTMTLCS_','CurSenrPhaU_VCC','Detn')
      Modified_Data = CheckConfiguration(OriginalConf,'FTMTLCS_CurSenrPhaU_VCCDetn',Modified_Data);
      CreateSignal('FTMTLCS_','CurSenrPhaU_VCC','Logged');
      CreateSignal('FTMTLCS_','CurSenrPhaU_VCC','Detected');
      CreateSignal('FTMTLCS_','','Logged');
      CreateSignal('FTMTLCS_','','Detected');
  end
catch
end

% FTMTLCS_CurSenrPhaV_GNDDetn
try
  if (strcmp(class(evalin('base','FTMTLCS_CurSenrPhaV_GNDDetn')),'mpt.Signal'))
      OriginalConf = SaveOriginalConf('FTMTLCS_CurSenrPhaV_GNDDetn');
      SetNewConfiguration('FTMTLCS_','CurSenrPhaV_GND','Detn')
      Modified_Data = CheckConfiguration(OriginalConf,'FTMTLCS_CurSenrPhaV_GNDDetn',Modified_Data);
      CreateSignal('FTMTLCS_','CurSenrPhaV_GND','Logged');
      CreateSignal('FTMTLCS_','CurSenrPhaV_GND','Detected');
      CreateSignal('FTMTLCS_','','Logged');
      CreateSignal('FTMTLCS_','','Detected');
  end
catch
end

% FTMTLCS_CurSenrPhaV_VCCDetn
try
  if (strcmp(class(evalin('base','FTMTLCS_CurSenrPhaV_VCCDetn')),'mpt.Signal'))
      OriginalConf = SaveOriginalConf('FTMTLCS_CurSenrPhaV_VCCDetn');
      SetNewConfiguration('FTMTLCS_','CurSenrPhaV_VCC','Detn')
      Modified_Data = CheckConfiguration(OriginalConf,'FTMTLCS_CurSenrPhaV_VCCDetn',Modified_Data);
      CreateSignal('FTMTLCS_','CurSenrPhaV_VCC','Logged');
      CreateSignal('FTMTLCS_','CurSenrPhaV_VCC','Detected');
      CreateSignal('FTMTLCS_','','Logged');
      CreateSignal('FTMTLCS_','','Detected');
  end
catch
end

% FTMTLCS_CurSenrPhaW_GNDDetn
try
  if (strcmp(class(evalin('base','FTMTLCS_CurSenrPhaW_GNDDetn')),'mpt.Signal'))
      OriginalConf = SaveOriginalConf('FTMTLCS_CurSenrPhaW_GNDDetn');
      SetNewConfiguration('FTMTLCS_','CurSenrPhaW_GND','Detn')
      Modified_Data = CheckConfiguration(OriginalConf,'FTMTLCS_CurSenrPhaW_GNDDetn',Modified_Data);
      CreateSignal('FTMTLCS_','CurSenrPhaW_GND','Logged');
      CreateSignal('FTMTLCS_','CurSenrPhaW_GND','Detected');
      CreateSignal('FTMTLCS_','','Logged');
      CreateSignal('FTMTLCS_','','Detected');
  end
catch
end

% FTMTLCS_CurSenrPhaW_VCCDetn
try
  if (strcmp(class(evalin('base','FTMTLCS_CurSenrPhaW_VCCDetn')),'mpt.Signal'))
      OriginalConf = SaveOriginalConf('FTMTLCS_CurSenrPhaW_VCCDetn');
      SetNewConfiguration('FTMTLCS_','CurSenrPhaW_VCC','Detn')
      Modified_Data = CheckConfiguration(OriginalConf,'FTMTLCS_CurSenrPhaW_VCCDetn',Modified_Data);
      CreateSignal('FTMTLCS_','CurSenrPhaW_VCC','Logged');
      CreateSignal('FTMTLCS_','CurSenrPhaW_VCC','Detected');
      CreateSignal('FTMTLCS_','','Logged');
      CreateSignal('FTMTLCS_','','Detected');
  end
catch
end

% SDMTMEP_CosGndDetn
try
  if (strcmp(class(evalin('base','SDMTMEP_CosGndDetn')),'mpt.Signal'))
      OriginalConf = SaveOriginalConf('SDMTMEP_CosGndDetn');
      SetNewConfiguration('SDMTMEP_','CosGnd','Detn')
      Modified_Data = CheckConfiguration(OriginalConf,'SDMTMEP_CosGndDetn',Modified_Data);
      CreateSignal('SDMTMEP_','CosGnd','Logged');
      CreateSignal('SDMTMEP_','CosGnd','Detected');
      CreateSignal('SDMTMEP_','','Logged');
      CreateSignal('SDMTMEP_','','Detected');
  end
catch
end

% SDMTMEP_CosVccDetn
try
  if (strcmp(class(evalin('base','SDMTMEP_CosVccDetn')),'mpt.Signal'))
      OriginalConf = SaveOriginalConf('SDMTMEP_CosVccDetn');
      SetNewConfiguration('SDMTMEP_','CosVcc','Detn')
      Modified_Data = CheckConfiguration(OriginalConf,'SDMTMEP_CosVccDetn',Modified_Data);
      CreateSignal('SDMTMEP_','CosVcc','Logged');
      CreateSignal('SDMTMEP_','CosVcc','Detected');
      CreateSignal('SDMTMEP_','','Logged');
      CreateSignal('SDMTMEP_','','Detected');
  end
catch
end

% SDMTMEP_SinGndDetn
try
  if (strcmp(class(evalin('base','SDMTMEP_SinGndDetn')),'mpt.Signal'))
      OriginalConf = SaveOriginalConf('SDMTMEP_SinGndDetn');
      SetNewConfiguration('SDMTMEP_','SinGnd','Detn')
      Modified_Data = CheckConfiguration(OriginalConf,'SDMTMEP_SinGndDetn',Modified_Data);
      CreateSignal('SDMTMEP_','SinGnd','Logged');
      CreateSignal('SDMTMEP_','SinGnd','Detected');
      CreateSignal('SDMTMEP_','','Logged');
      CreateSignal('SDMTMEP_','','Detected');
  end
catch
end

% SDMTMEP_SinVccDetn
try
  if (strcmp(class(evalin('base','SDMTMEP_SinVccDetn')),'mpt.Signal'))
      OriginalConf = SaveOriginalConf('SDMTMEP_SinVccDetn');
      SetNewConfiguration('SDMTMEP_','SinVcc','Detn')
      Modified_Data = CheckConfiguration(OriginalConf,'SDMTMEP_SinVccDetn',Modified_Data);
      CreateSignal('SDMTMEP_','SinVcc','Logged');
      CreateSignal('SDMTMEP_','SinVcc','Detected');
      CreateSignal('SDMTMEP_','','Logged');
      CreateSignal('SDMTMEP_','','Detected');
  end
catch
end

% SDMTMEP_OverSpeedDetn
try
  if (strcmp(class(evalin('base','SDMTMEP_OverSpeedDetn')),'mpt.Signal'))
      OriginalConf = SaveOriginalConf('SDMTMEP_OverSpeedDetn');
      SetNewConfiguration('SDMTMEP_','OverSpeed','Detn')
      Modified_Data = CheckConfiguration(OriginalConf,'SDMTMEP_OverSpeedDetn',Modified_Data);
      CreateSignal('SDMTMEP_','OverSpeed','Logged');
      CreateSignal('SDMTMEP_','OverSpeed','Detected');
      CreateSignal('SDMTMEP_','','Logged');
      CreateSignal('SDMTMEP_','','Detected');
  end
catch
end

% SDMTMEP_UnderSpeedDetn
try
  if (strcmp(class(evalin('base','SDMTMEP_UnderSpeedDetn')),'mpt.Signal'))
      OriginalConf = SaveOriginalConf('SDMTMEP_UnderSpeedDetn');
      SetNewConfiguration('SDMTMEP_','UnderSpeed','Detn')
      Modified_Data = CheckConfiguration(OriginalConf,'SDMTMEP_UnderSpeedDetn',Modified_Data);
      CreateSignal('SDMTMEP_','UnderSpeed','Logged');
      CreateSignal('SDMTMEP_','UnderSpeed','Detected');
      CreateSignal('SDMTMEP_','','Logged');
      CreateSignal('SDMTMEP_','','Detected');
  end
catch
end

% SDMTMEP_ResSquaSumErrByFTDetn
try
  if (strcmp(class(evalin('base','SDMTMEP_ResSquaSumErrByFTDetn')),'mpt.Signal'))
      OriginalConf = SaveOriginalConf('SDMTMEP_ResSquaSumErrByFTDetn');
      SetNewConfiguration('SDMTMEP_','ResSquaSumErrByFT','Detn')
      Modified_Data = CheckConfiguration(OriginalConf,'SDMTMEP_ResSquaSumErrByFTDetn',Modified_Data);
      CreateSignal('SDMTMEP_','ResSquaSumErrByFT','Logged');
      CreateSignal('SDMTMEP_','ResSquaSumErrByFT','Detected');
      CreateSignal('SDMTMEP_','','Logged');
      CreateSignal('SDMTMEP_','','Detected');
  end
catch
end

% SDMTMEP_SpeedWarnDetn
try
  if (strcmp(class(evalin('base','SDMTMEP_SpeedWarnDetn')),'mpt.Signal'))
      OriginalConf = SaveOriginalConf('SDMTMEP_SpeedWarnDetn');
      SetNewConfiguration('SDMTMEP_','SpeedWarn','Detn')
      Modified_Data = CheckConfiguration(OriginalConf,'SDMTMEP_SpeedWarnDetn',Modified_Data);
      CreateSignal('SDMTMEP_','SpeedWarn','Logged');
      CreateSignal('SDMTMEP_','SpeedWarn','Detected');
      CreateSignal('SDMTMEP_','','Logged');
      CreateSignal('SDMTMEP_','','Detected');
  end
catch
end

% FTCMTCS_VoltageMarginLowDetn
try
  if (strcmp(class(evalin('base','FTCMTCS_VoltageMarginLowDetn')),'mpt.Signal'))
      OriginalConf = SaveOriginalConf('FTCMTCS_VoltageMarginLowDetn');
      SetNewConfiguration('FTCMTCS_','VoltageMarginLow','Detn')
      Modified_Data = CheckConfiguration(OriginalConf,'FTCMTCS_VoltageMarginLowDetn',Modified_Data);
      CreateSignal('FTCMTCS_','VoltageMarginLow','Logged');
      CreateSignal('FTCMTCS_','VoltageMarginLow','Detected');
      CreateSignal('FTCMTCS_','','Logged');
      CreateSignal('FTCMTCS_','','Detected');
  end
catch
end

% FTASBDS_BattVoltDeratingActDetn
try
  if (strcmp(class(evalin('base','FTASBDS_BattVoltDeratingActDetn')),'mpt.Signal'))
      OriginalConf = SaveOriginalConf('FTASBDS_BattVoltDeratingActDetn');
      SetNewConfiguration('FTASBDS_','BattVoltDeratingAct','Detn')
      Modified_Data = CheckConfiguration(OriginalConf,'FTASBDS_BattVoltDeratingActDetn',Modified_Data);
      CreateSignal('FTASBDS_','BattVoltDeratingAct','Logged');
      CreateSignal('FTASBDS_','BattVoltDeratingAct','Detected');
      CreateSignal('FTASBDS_','','Logged');
      CreateSignal('FTASBDS_','','Detected');
  end
catch
end

% FTASETP_EstPmDeratingActDetn
try
  if (strcmp(class(evalin('base','FTASETP_EstPmDeratingActDetn')),'mpt.Signal'))
      OriginalConf = SaveOriginalConf('FTASETP_EstPmDeratingActDetn');
      SetNewConfiguration('FTASETP_','EstPmDeratingAct','Detn')
      Modified_Data = CheckConfiguration(OriginalConf,'FTASETP_EstPmDeratingActDetn',Modified_Data);
      CreateSignal('FTASETP_','EstPmDeratingAct','Logged');
      CreateSignal('FTASETP_','EstPmDeratingAct','Detected');
      CreateSignal('FTASETP_','','Logged');
      CreateSignal('FTASETP_','','Detected');
  end
catch
end

% FTASETP_PmDeratingActDetn
try
  if (strcmp(class(evalin('base','FTASETP_PmDeratingActDetn')),'mpt.Signal'))
      OriginalConf = SaveOriginalConf('FTASETP_PmDeratingActDetn');
      SetNewConfiguration('FTASETP_','PmDeratingAct','Detn')
      Modified_Data = CheckConfiguration(OriginalConf,'FTASETP_PmDeratingActDetn',Modified_Data);
      CreateSignal('FTASETP_','PmDeratingAct','Logged');
      CreateSignal('FTASETP_','PmDeratingAct','Detected');
      CreateSignal('FTASETP_','','Logged');
      CreateSignal('FTASETP_','','Detected');
  end
catch
end

% FTASMTP_Wndg1DeratingActDetn
try
  if (strcmp(class(evalin('base','FTASMTP_Wndg1DeratingActDetn')),'mpt.Signal'))
      OriginalConf = SaveOriginalConf('FTASMTP_Wndg1DeratingActDetn');
      SetNewConfiguration('FTASMTP_','Wndg1DeratingAct','Detn')
      Modified_Data = CheckConfiguration(OriginalConf,'FTASMTP_Wndg1DeratingActDetn',Modified_Data);
      CreateSignal('FTASMTP_','Wndg1DeratingAct','Logged');
      CreateSignal('FTASMTP_','Wndg1DeratingAct','Detected');
      CreateSignal('FTASMTP_','','Logged');
      CreateSignal('FTASMTP_','','Detected');
  end
catch
end

% FTASMTP_WndgRateDrt1Detn
try
  if (strcmp(class(evalin('base','FTASMTP_WndgRateDrt1Detn')),'mpt.Signal'))
      OriginalConf = SaveOriginalConf('FTASMTP_WndgRateDrt1Detn');
      SetNewConfiguration('FTASMTP_','WndgRateDrt1','Detn')
      Modified_Data = CheckConfiguration(OriginalConf,'FTASMTP_WndgRateDrt1Detn',Modified_Data);
      CreateSignal('FTASMTP_','WndgRateDrt1','Logged');
      CreateSignal('FTASMTP_','WndgRateDrt1','Detected');
      CreateSignal('FTASMTP_','','Logged');
      CreateSignal('FTASMTP_','','Detected');
  end
catch
end

% FTASMTP_WndgUnderRateDrt1Detn
try
  if (strcmp(class(evalin('base','FTASMTP_WndgUnderRateDrt1Detn')),'mpt.Signal'))
      OriginalConf = SaveOriginalConf('FTASMTP_WndgUnderRateDrt1Detn');
      SetNewConfiguration('FTASMTP_','WndgUnderRateDrt1','Detn')
      Modified_Data = CheckConfiguration(OriginalConf,'FTASMTP_WndgUnderRateDrt1Detn',Modified_Data);
      CreateSignal('FTASMTP_','WndgUnderRateDrt1','Logged');
      CreateSignal('FTASMTP_','WndgUnderRateDrt1','Detected');
      CreateSignal('FTASMTP_','','Logged');
      CreateSignal('FTASMTP_','','Detected');
  end
catch
end

% FTASMTP_WndgRateDrt2Detn
try
  if (strcmp(class(evalin('base','FTASMTP_WndgRateDrt2Detn')),'mpt.Signal'))
      OriginalConf = SaveOriginalConf('FTASMTP_WndgRateDrt2Detn');
      SetNewConfiguration('FTASMTP_','WndgRateDrt2','Detn')
      Modified_Data = CheckConfiguration(OriginalConf,'FTASMTP_WndgRateDrt2Detn',Modified_Data);
      CreateSignal('FTASMTP_','WndgRateDrt2','Logged');
      CreateSignal('FTASMTP_','WndgRateDrt2','Detected');
      CreateSignal('FTASMTP_','','Logged');
      CreateSignal('FTASMTP_','','Detected');
  end
catch
end

% FTASMTP_WndgUnderRateDrt2Detn
try
  if (strcmp(class(evalin('base','FTASMTP_WndgUnderRateDrt2Detn')),'mpt.Signal'))
      OriginalConf = SaveOriginalConf('FTASMTP_WndgUnderRateDrt2Detn');
      SetNewConfiguration('FTASMTP_','WndgUnderRateDrt2','Detn')
      Modified_Data = CheckConfiguration(OriginalConf,'FTASMTP_WndgUnderRateDrt2Detn',Modified_Data);
      CreateSignal('FTASMTP_','WndgUnderRateDrt2','Logged');
      CreateSignal('FTASMTP_','WndgUnderRateDrt2','Detected');
      CreateSignal('FTASMTP_','','Logged');
      CreateSignal('FTASMTP_','','Detected');
  end
catch
end

% FTASOSP_MotorSpdDeratingActDetn
try
  if (strcmp(class(evalin('base','FTASOSP_MotorSpdDeratingActDetn')),'mpt.Signal'))
      OriginalConf = SaveOriginalConf('FTASOSP_MotorSpdDeratingActDetn');
      SetNewConfiguration('FTASOSP_','MotorSpdDeratingAct','Detn')
      Modified_Data = CheckConfiguration(OriginalConf,'FTASOSP_MotorSpdDeratingActDetn',Modified_Data);
      CreateSignal('FTASOSP_','MotorSpdDeratingAct','Logged');
      CreateSignal('FTASOSP_','MotorSpdDeratingAct','Detected');
      CreateSignal('FTASOSP_','','Logged');
      CreateSignal('FTASOSP_','','Detected');
  end
catch
end

% FTCMSCS_SpdOvershootDetn
try
  if (strcmp(class(evalin('base','FTCMSCS_SpdOvershootDetn')),'mpt.Signal'))
      OriginalConf = SaveOriginalConf('FTCMSCS_SpdOvershootDetn');
      SetNewConfiguration('FTCMSCS_','SpdOvershoot','Detn')
      Modified_Data = CheckConfiguration(OriginalConf,'FTCMSCS_SpdOvershootDetn',Modified_Data);
      CreateSignal('FTCMSCS_','SpdOvershoot','Logged');
      CreateSignal('FTCMSCS_','SpdOvershoot','Detected');
      CreateSignal('FTCMSCS_','','Logged');
      CreateSignal('FTCMSCS_','','Detected');
  end
catch
end

% GBSW_HW_FPGA_IGBT_HDetn
try
  if (strcmp(class(evalin('base','GBSW_HW_FPGA_IGBT_HDetn')),'mpt.Signal'))
      OriginalConf = SaveOriginalConf('GBSW_HW_FPGA_IGBT_HDetn');
      SetNewConfiguration('GBSW_HW_','FPGA_IGBT_H','Detn')
      Modified_Data = CheckConfiguration(OriginalConf,'GBSW_HW_FPGA_IGBT_HDetn',Modified_Data);
      CreateSignal('GBSW_HW_','FPGA_IGBT_H','Logged');
      CreateSignal('GBSW_HW_','FPGA_IGBT_H','Detected');
      CreateSignal('GBSW_HW_','','Logged');
      CreateSignal('GBSW_HW_','','Detected');
  end
catch
end

% GBSW_HW_FPGA_IGBT_LDetn
try
  if (strcmp(class(evalin('base','GBSW_HW_FPGA_IGBT_LDetn')),'mpt.Signal'))
      OriginalConf = SaveOriginalConf('GBSW_HW_FPGA_IGBT_LDetn');
      SetNewConfiguration('GBSW_HW_','FPGA_IGBT_L','Detn')
      Modified_Data = CheckConfiguration(OriginalConf,'GBSW_HW_FPGA_IGBT_LDetn',Modified_Data);
      CreateSignal('GBSW_HW_','FPGA_IGBT_L','Logged');
      CreateSignal('GBSW_HW_','FPGA_IGBT_L','Detected');
      CreateSignal('GBSW_HW_','','Logged');
      CreateSignal('GBSW_HW_','','Detected');
  end
catch
end

% GBSW_HW_FPGA_OverUnderCurUIDetn
try
  if (strcmp(class(evalin('base','GBSW_HW_FPGA_OverUnderCurUIDetn')),'mpt.Signal'))
      OriginalConf = SaveOriginalConf('GBSW_HW_FPGA_OverUnderCurUIDetn');
      SetNewConfiguration('GBSW_HW_','FPGA_OverUnderCurUI','Detn')
      Modified_Data = CheckConfiguration(OriginalConf,'GBSW_HW_FPGA_OverUnderCurUIDetn',Modified_Data);
      CreateSignal('GBSW_HW_','FPGA_OverUnderCurUI','Logged');
      CreateSignal('GBSW_HW_','FPGA_OverUnderCurUI','Detected');
      CreateSignal('GBSW_HW_','','Logged');
      CreateSignal('GBSW_HW_','','Detected');
  end
catch
end

% GBSW_HW_FPGA_OverUnderCurVIDetn
try
  if (strcmp(class(evalin('base','GBSW_HW_FPGA_OverUnderCurVIDetn')),'mpt.Signal'))
      OriginalConf = SaveOriginalConf('GBSW_HW_FPGA_OverUnderCurVIDetn');
      SetNewConfiguration('GBSW_HW_','FPGA_OverUnderCurVI','Detn')
      Modified_Data = CheckConfiguration(OriginalConf,'GBSW_HW_FPGA_OverUnderCurVIDetn',Modified_Data);
      CreateSignal('GBSW_HW_','FPGA_OverUnderCurVI','Logged');
      CreateSignal('GBSW_HW_','FPGA_OverUnderCurVI','Detected');
      CreateSignal('GBSW_HW_','','Logged');
      CreateSignal('GBSW_HW_','','Detected');
  end
catch
end

% GBSW_HW_FPGA_OverUnderCurWIDetn
try
  if (strcmp(class(evalin('base','GBSW_HW_FPGA_OverUnderCurWIDetn')),'mpt.Signal'))
      OriginalConf = SaveOriginalConf('GBSW_HW_FPGA_OverUnderCurWIDetn');
      SetNewConfiguration('GBSW_HW_','FPGA_OverUnderCurWI','Detn')
      Modified_Data = CheckConfiguration(OriginalConf,'GBSW_HW_FPGA_OverUnderCurWIDetn',Modified_Data);
      CreateSignal('GBSW_HW_','FPGA_OverUnderCurWI','Logged');
      CreateSignal('GBSW_HW_','FPGA_OverUnderCurWI','Detected');
      CreateSignal('GBSW_HW_','','Logged');
      CreateSignal('GBSW_HW_','','Detected');
  end
catch
end

% GBSW_HW_OCDataNotRationalDetn
try
  if (strcmp(class(evalin('base','GBSW_HW_OCDataNotRationalDetn')),'mpt.Signal'))
      OriginalConf = SaveOriginalConf('GBSW_HW_OCDataNotRationalDetn');
      SetNewConfiguration('GBSW_HW_','OCDataNotRational','Detn')
      Modified_Data = CheckConfiguration(OriginalConf,'GBSW_HW_OCDataNotRationalDetn',Modified_Data);
      CreateSignal('GBSW_HW_','OCDataNotRational','Logged');
      CreateSignal('GBSW_HW_','OCDataNotRational','Detected');
      CreateSignal('GBSW_HW_','','Logged');
      CreateSignal('GBSW_HW_','','Detected');
  end
catch
end

% GBSW_HW2_FPGA_OverVoltVBatDetn
try
  if (strcmp(class(evalin('base','GBSW_HW2_FPGA_OverVoltVBatDetn')),'mpt.Signal'))
      OriginalConf = SaveOriginalConf('GBSW_HW2_FPGA_OverVoltVBatDetn');
      SetNewConfiguration('GBSW_HW2_','FPGA_OverVoltVBat','Detn')
      Modified_Data = CheckConfiguration(OriginalConf,'GBSW_HW2_FPGA_OverVoltVBatDetn',Modified_Data);
      CreateSignal('GBSW_HW2_','FPGA_OverVoltVBat','Logged');
      CreateSignal('GBSW_HW2_','FPGA_OverVoltVBat','Detected');
      CreateSignal('GBSW_HW2_','','Logged');
      CreateSignal('GBSW_HW2_','','Detected');
  end
catch
end

% GBSW_HW2_SelfTst_InterLockDetn
try
  if (strcmp(class(evalin('base','GBSW_HW2_SelfTst_InterLockDetn')),'mpt.Signal'))
      OriginalConf = SaveOriginalConf('GBSW_HW2_SelfTst_InterLockDetn');
      SetNewConfiguration('GBSW_HW2_','SelfTst_InterLock','Detn')
      Modified_Data = CheckConfiguration(OriginalConf,'GBSW_HW2_SelfTst_InterLockDetn',Modified_Data);
      CreateSignal('GBSW_HW2_','SelfTst_InterLock','Logged');
      CreateSignal('GBSW_HW2_','SelfTst_InterLock','Detected');
      CreateSignal('GBSW_HW2_','','Logged');
      CreateSignal('GBSW_HW2_','','Detected');
  end
catch
end

% GBSW_COM_BusOff_CAN1Detn
try
  if (strcmp(class(evalin('base','GBSW_COM_BusOff_CAN1Detn')),'mpt.Signal'))
      OriginalConf = SaveOriginalConf('GBSW_COM_BusOff_CAN1Detn');
      SetNewConfiguration('GBSW_COM_','BusOff_CAN1','Detn')
      Modified_Data = CheckConfiguration(OriginalConf,'GBSW_COM_BusOff_CAN1Detn',Modified_Data);
      CreateSignal('GBSW_COM_','BusOff_CAN1','Logged');
      CreateSignal('GBSW_COM_','BusOff_CAN1','Detected');
      CreateSignal('GBSW_COM_','','Logged');
      CreateSignal('GBSW_COM_','','Detected');
  end
catch
end

% GBSW_COM_TimoutRxVCUDetn
try
  if (strcmp(class(evalin('base','GBSW_COM_TimoutRxVCUDetn')),'mpt.Signal'))
      OriginalConf = SaveOriginalConf('GBSW_COM_TimoutRxVCUDetn');
      SetNewConfiguration('GBSW_COM_','TimoutRxVCU','Detn')
      Modified_Data = CheckConfiguration(OriginalConf,'GBSW_COM_TimoutRxVCUDetn',Modified_Data);
      CreateSignal('GBSW_COM_','TimoutRxVCU','Logged');
      CreateSignal('GBSW_COM_','TimoutRxVCU','Detected');
      CreateSignal('GBSW_COM_','','Logged');
      CreateSignal('GBSW_COM_','','Detected');
  end
catch
end

% GBSW_COM_RcErrRxVCUDetn
try
  if (strcmp(class(evalin('base','GBSW_COM_RcErrRxVCUDetn')),'mpt.Signal'))
      OriginalConf = SaveOriginalConf('GBSW_COM_RcErrRxVCUDetn');
      SetNewConfiguration('GBSW_COM_','RcErrRxVCU','Detn')
      Modified_Data = CheckConfiguration(OriginalConf,'GBSW_COM_RcErrRxVCUDetn',Modified_Data);
      CreateSignal('GBSW_COM_','RcErrRxVCU','Logged');
      CreateSignal('GBSW_COM_','RcErrRxVCU','Detected');
      CreateSignal('GBSW_COM_','','Logged');
      CreateSignal('GBSW_COM_','','Detected');
  end
catch
end

% GFSEVBLV_OverVoltageDetn
try
  if (strcmp(class(evalin('base','GFSEVBLV_OverVoltageDetn')),'mpt.Signal'))
      OriginalConf = SaveOriginalConf('GFSEVBLV_OverVoltageDetn');
      SetNewConfiguration('GFSEVBLV_','OverVoltage','Detn')
      Modified_Data = CheckConfiguration(OriginalConf,'GFSEVBLV_OverVoltageDetn',Modified_Data);
      CreateSignal('GFSEVBLV_','OverVoltage','Logged');
      CreateSignal('GFSEVBLV_','OverVoltage','Detected');
      CreateSignal('GFSEVBLV_','','Logged');
      CreateSignal('GFSEVBLV_','','Detected');
  end
catch
end

% GFSEVBLV_UnderVoltageDetn
try
  if (strcmp(class(evalin('base','GFSEVBLV_UnderVoltageDetn')),'mpt.Signal'))
      OriginalConf = SaveOriginalConf('GFSEVBLV_UnderVoltageDetn');
      SetNewConfiguration('GFSEVBLV_','UnderVoltage','Detn')
      Modified_Data = CheckConfiguration(OriginalConf,'GFSEVBLV_UnderVoltageDetn',Modified_Data);
      CreateSignal('GFSEVBLV_','UnderVoltage','Logged');
      CreateSignal('GFSEVBLV_','UnderVoltage','Detected');
      CreateSignal('GFSEVBLV_','','Logged');
      CreateSignal('GFSEVBLV_','','Detected');
  end
catch
end

% GFSEVBLV_P5VRefADCFltDetn
try
  if (strcmp(class(evalin('base','GFSEVBLV_P5VRefADCFltDetn')),'mpt.Signal'))
      OriginalConf = SaveOriginalConf('GFSEVBLV_P5VRefADCFltDetn');
      SetNewConfiguration('GFSEVBLV_','P5VRefADCFlt','Detn')
      Modified_Data = CheckConfiguration(OriginalConf,'GFSEVBLV_P5VRefADCFltDetn',Modified_Data);
      CreateSignal('GFSEVBLV_','P5VRefADCFlt','Logged');
      CreateSignal('GFSEVBLV_','P5VRefADCFlt','Detected');
      CreateSignal('GFSEVBLV_','','Logged');
      CreateSignal('GFSEVBLV_','','Detected');
  end
catch
end

% GFSEVBHV_OverVoltageDetn
try
  if (strcmp(class(evalin('base','GFSEVBHV_OverVoltageDetn')),'mpt.Signal'))
      OriginalConf = SaveOriginalConf('GFSEVBHV_OverVoltageDetn');
      SetNewConfiguration('GFSEVBHV_','OverVoltage','Detn')
      Modified_Data = CheckConfiguration(OriginalConf,'GFSEVBHV_OverVoltageDetn',Modified_Data);
      CreateSignal('GFSEVBHV_','OverVoltage','Logged');
      CreateSignal('GFSEVBHV_','OverVoltage','Detected');
      CreateSignal('GFSEVBHV_','','Logged');
      CreateSignal('GFSEVBHV_','','Detected');
  end
catch
end

% GFSEVBHV_UnderVoltageDetn
try
  if (strcmp(class(evalin('base','GFSEVBHV_UnderVoltageDetn')),'mpt.Signal'))
      OriginalConf = SaveOriginalConf('GFSEVBHV_UnderVoltageDetn');
      SetNewConfiguration('GFSEVBHV_','UnderVoltage','Detn')
      Modified_Data = CheckConfiguration(OriginalConf,'GFSEVBHV_UnderVoltageDetn',Modified_Data);
      CreateSignal('GFSEVBHV_','UnderVoltage','Logged');
      CreateSignal('GFSEVBHV_','UnderVoltage','Detected');
      CreateSignal('GFSEVBHV_','','Logged');
      CreateSignal('GFSEVBHV_','','Detected');
  end
catch
end

% GFSEVBHV_VoltageVccDetn
try
  if (strcmp(class(evalin('base','GFSEVBHV_VoltageVccDetn')),'mpt.Signal'))
      OriginalConf = SaveOriginalConf('GFSEVBHV_VoltageVccDetn');
      SetNewConfiguration('GFSEVBHV_','VoltageVcc','Detn')
      Modified_Data = CheckConfiguration(OriginalConf,'GFSEVBHV_VoltageVccDetn',Modified_Data);
      CreateSignal('GFSEVBHV_','VoltageVcc','Logged');
      CreateSignal('GFSEVBHV_','VoltageVcc','Detected');
      CreateSignal('GFSEVBHV_','','Logged');
      CreateSignal('GFSEVBHV_','','Detected');
  end
catch
end

% GFSEVBHV_VoltageGndDetn
try
  if (strcmp(class(evalin('base','GFSEVBHV_VoltageGndDetn')),'mpt.Signal'))
      OriginalConf = SaveOriginalConf('GFSEVBHV_VoltageGndDetn');
      SetNewConfiguration('GFSEVBHV_','VoltageGnd','Detn')
      Modified_Data = CheckConfiguration(OriginalConf,'GFSEVBHV_VoltageGndDetn',Modified_Data);
      CreateSignal('GFSEVBHV_','VoltageGnd','Logged');
      CreateSignal('GFSEVBHV_','VoltageGnd','Detected');
      CreateSignal('GFSEVBHV_','','Logged');
      CreateSignal('GFSEVBHV_','','Detected');
  end
catch
end

% GFSEVETA_IgbtTempRationalDetn
try
  if (strcmp(class(evalin('base','GFSEVETA_IgbtTempRationalDetn')),'mpt.Signal'))
      OriginalConf = SaveOriginalConf('GFSEVETA_IgbtTempRationalDetn');
      SetNewConfiguration('GFSEVETA_','IgbtTempRational','Detn')
      Modified_Data = CheckConfiguration(OriginalConf,'GFSEVETA_IgbtTempRationalDetn',Modified_Data);
      CreateSignal('GFSEVETA_','IgbtTempRational','Logged');
      CreateSignal('GFSEVETA_','IgbtTempRational','Detected');
      CreateSignal('GFSEVETA_','','Logged');
      CreateSignal('GFSEVETA_','','Detected');
  end
catch
end

% GFSEVETA_OverTempNTC1CmdBoardDetn
try
  if (strcmp(class(evalin('base','GFSEVETA_OverTempNTC1CmdBoardDetn')),'mpt.Signal'))
      OriginalConf = SaveOriginalConf('GFSEVETA_OverTempNTC1CmdBoardDetn');
      SetNewConfiguration('GFSEVETA_','OverTempNTC1CmdBoard','Detn')
      Modified_Data = CheckConfiguration(OriginalConf,'GFSEVETA_OverTempNTC1CmdBoardDetn',Modified_Data);
      CreateSignal('GFSEVETA_','OverTempNTC1CmdBoard','Logged');
      CreateSignal('GFSEVETA_','OverTempNTC1CmdBoard','Detected');
      CreateSignal('GFSEVETA_','','Logged');
      CreateSignal('GFSEVETA_','','Detected');
  end
catch
end

% GFSEVETA_OverTempDrvLeftDetn
try
  if (strcmp(class(evalin('base','GFSEVETA_OverTempDrvLeftDetn')),'mpt.Signal'))
      OriginalConf = SaveOriginalConf('GFSEVETA_OverTempDrvLeftDetn');
      SetNewConfiguration('GFSEVETA_Over','TempDrvLeft','Detn')
      Modified_Data = CheckConfiguration(OriginalConf,'GFSEVETA_OverTempDrvLeftDetn',Modified_Data);
      CreateSignal('GFSEVETA_Over','TempDrvLeft','Logged');
      CreateSignal('GFSEVETA_Over','TempDrvLeft','Detected');
      CreateSignal('GFSEVETA_Over','','Logged');
      CreateSignal('GFSEVETA_Over','','Detected');
  end
catch
end

% GFSEVETA_OverTempIgbtLeftDetn
try
  if (strcmp(class(evalin('base','GFSEVETA_OverTempIgbtLeftDetn')),'mpt.Signal'))
      OriginalConf = SaveOriginalConf('GFSEVETA_OverTempIgbtLeftDetn');
      SetNewConfiguration('GFSEVETA_Over','TempIgbtLeft','Detn')
      Modified_Data = CheckConfiguration(OriginalConf,'GFSEVETA_OverTempIgbtLeftDetn',Modified_Data);
      CreateSignal('GFSEVETA_Over','TempIgbtLeft','Logged');
      CreateSignal('GFSEVETA_Over','TempIgbtLeft','Detected');
      CreateSignal('GFSEVETA_Over','','Logged');
      CreateSignal('GFSEVETA_Over','','Detected');
  end
catch
end

% GFSMTMTA_OverTempWdgHead1Detn
try
  if (strcmp(class(evalin('base','GFSMTMTA_OverTempWdgHead1Detn')),'mpt.Signal'))
      OriginalConf = SaveOriginalConf('GFSMTMTA_OverTempWdgHead1Detn');
      SetNewConfiguration('GFSMTMTA_Over','TempWdgHead1','Detn')
      Modified_Data = CheckConfiguration(OriginalConf,'GFSMTMTA_OverTempWdgHead1Detn',Modified_Data);
      CreateSignal('GFSMTMTA_Over','TempWdgHead1','Logged');
      CreateSignal('GFSMTMTA_Over','TempWdgHead1','Detected');
      CreateSignal('GFSMTMTA_Over','','Logged');
      CreateSignal('GFSMTMTA_Over','','Detected');
  end
catch
end

% GFSMTMTA_OverTempWdgHead2Detn
try
  if (strcmp(class(evalin('base','GFSMTMTA_OverTempWdgHead2Detn')),'mpt.Signal'))
      OriginalConf = SaveOriginalConf('GFSMTMTA_OverTempWdgHead2Detn');
      SetNewConfiguration('GFSMTMTA_Over','TempWdgHead2','Detn')
      Modified_Data = CheckConfiguration(OriginalConf,'GFSMTMTA_OverTempWdgHead2Detn',Modified_Data);
      CreateSignal('GFSMTMTA_Over','TempWdgHead2','Logged');
      CreateSignal('GFSMTMTA_Over','TempWdgHead2','Detected');
      CreateSignal('GFSMTMTA_Over','','Logged');
      CreateSignal('GFSMTMTA_Over','','Detected');
  end
catch
end

% GFSSMACS_AkdFailFlagDetn
try
  if (strcmp(class(evalin('base','GFSSMACS_AkdFailFlagDetn')),'mpt.Signal'))
      OriginalConf = SaveOriginalConf('GFSSMACS_AkdFailFlagDetn');
      SetNewConfiguration('GFSSMACS_','AkdFailFlag','Detn')
      Modified_Data = CheckConfiguration(OriginalConf,'GFSSMACS_AkdFailFlagDetn',Modified_Data);
      CreateSignal('GFSSMACS_','AkdFailFlag','Logged');
      CreateSignal('GFSSMACS_','AkdFailFlag','Detected');
      CreateSignal('GFSSMACS_','','Logged');
      CreateSignal('GFSSMACS_','','Detected');
  end
catch
end

% GFSMTRDG_ExcGenerationDetn
try
  if (strcmp(class(evalin('base','GFSMTRDG_ExcGenerationDetn')),'mpt.Signal'))
      OriginalConf = SaveOriginalConf('GFSMTRDG_ExcGenerationDetn');
      SetNewConfiguration('GFSMTRDG_','ExcGeneration','Detn')
      Modified_Data = CheckConfiguration(OriginalConf,'GFSMTRDG_ExcGenerationDetn',Modified_Data);
      CreateSignal('GFSMTRDG_','ExcGeneration','Logged');
      CreateSignal('GFSMTRDG_','ExcGeneration','Detected');
      CreateSignal('GFSMTRDG_','','Logged');
      CreateSignal('GFSMTRDG_','','Detected');
  end
catch
end

% GFSMTRDG_SinCosHLVccDetn
try
  if (strcmp(class(evalin('base','GFSMTRDG_SinCosHLVccDetn')),'mpt.Signal'))
      OriginalConf = SaveOriginalConf('GFSMTRDG_SinCosHLVccDetn');
      SetNewConfiguration('GFSMTRDG_','SinCosHLVcc','Detn')
      Modified_Data = CheckConfiguration(OriginalConf,'GFSMTRDG_SinCosHLVccDetn',Modified_Data);
      CreateSignal('GFSMTRDG_','SinCosHLVcc','Logged');
      CreateSignal('GFSMTRDG_','SinCosHLVcc','Detected');
      CreateSignal('GFSMTRDG_','','Logged');
      CreateSignal('GFSMTRDG_','','Detected');
  end
catch
end

% GFSMTRDG_SinCosHLGndDetn
try
  if (strcmp(class(evalin('base','GFSMTRDG_SinCosHLGndDetn')),'mpt.Signal'))
      OriginalConf = SaveOriginalConf('GFSMTRDG_SinCosHLGndDetn');
      SetNewConfiguration('GFSMTRDG_','SinCosHLGnd','Detn')
      Modified_Data = CheckConfiguration(OriginalConf,'GFSMTRDG_SinCosHLGndDetn',Modified_Data);
      CreateSignal('GFSMTRDG_','SinCosHLGnd','Logged');
      CreateSignal('GFSMTRDG_','SinCosHLGnd','Detected');
      CreateSignal('GFSMTRDG_','','Logged');
      CreateSignal('GFSMTRDG_','','Detected');
  end
catch
end

% GFSMTRDG_SinCosHLOpenDetn
try
  if (strcmp(class(evalin('base','GFSMTRDG_SinCosHLOpenDetn')),'mpt.Signal'))
      OriginalConf = SaveOriginalConf('GFSMTRDG_SinCosHLOpenDetn');
      SetNewConfiguration('GFSMTRDG_','SinCosHLOpen','Detn')
      Modified_Data = CheckConfiguration(OriginalConf,'GFSMTRDG_SinCosHLOpenDetn',Modified_Data);
      CreateSignal('GFSMTRDG_','SinCosHLOpen','Logged');
      CreateSignal('GFSMTRDG_','SinCosHLOpen','Detected');
      CreateSignal('GFSMTRDG_','','Logged');
      CreateSignal('GFSMTRDG_','','Detected');
  end
catch
end

% GFSEVETA_TempIgbtLeftGndDetn
try
  if (strcmp(class(evalin('base','GFSEVETA_TempIgbtLeftGndDetn')),'mpt.Signal'))
      OriginalConf = SaveOriginalConf('GFSEVETA_TempIgbtLeftGndDetn');
      SetNewConfiguration('GFSEVETA_Temp','IgbtLeftGnd','Detn')
      Modified_Data = CheckConfiguration(OriginalConf,'GFSEVETA_TempIgbtLeftGndDetn',Modified_Data);
      CreateSignal('GFSEVETA_Temp','IgbtLeftGnd','Logged');
      CreateSignal('GFSEVETA_Temp','IgbtLeftGnd','Detected');
      CreateSignal('GFSEVETA_Temp','','Logged');
      CreateSignal('GFSEVETA_Temp','','Detected');
  end
catch
end

% GFSEVETA_TempIgbtLeftVccDetn
try
  if (strcmp(class(evalin('base','GFSEVETA_TempIgbtLeftVccDetn')),'mpt.Signal'))
      OriginalConf = SaveOriginalConf('GFSEVETA_TempIgbtLeftVccDetn');
      SetNewConfiguration('GFSEVETA_Temp','IgbtLeftVcc','Detn')
      Modified_Data = CheckConfiguration(OriginalConf,'GFSEVETA_TempIgbtLeftVccDetn',Modified_Data);
      CreateSignal('GFSEVETA_Temp','IgbtLeftVcc','Logged');
      CreateSignal('GFSEVETA_Temp','IgbtLeftVcc','Detected');
      CreateSignal('GFSEVETA_Temp','','Logged');
      CreateSignal('GFSEVETA_Temp','','Detected');
  end
catch
end

% GFSMTMTA_TempWindingHead1GndDetn
try
  if (strcmp(class(evalin('base','GFSMTMTA_TempWindingHead1GndDetn')),'mpt.Signal'))
      OriginalConf = SaveOriginalConf('GFSMTMTA_TempWindingHead1GndDetn');
      SetNewConfiguration('GFSMTMTA_Temp','WindingHead1Gnd','Detn')
      Modified_Data = CheckConfiguration(OriginalConf,'GFSMTMTA_TempWindingHead1GndDetn',Modified_Data);
      CreateSignal('GFSMTMTA_Temp','WindingHead1Gnd','Logged');
      CreateSignal('GFSMTMTA_Temp','WindingHead1Gnd','Detected');
      CreateSignal('GFSMTMTA_Temp','','Logged');
      CreateSignal('GFSMTMTA_Temp','','Detected');
  end
catch
end

% GFSMTMTA_TempWindingHead1VccDetn
try
  if (strcmp(class(evalin('base','GFSMTMTA_TempWindingHead1VccDetn')),'mpt.Signal'))
      OriginalConf = SaveOriginalConf('GFSMTMTA_TempWindingHead1VccDetn');
      SetNewConfiguration('GFSMTMTA_Temp','WindingHead1Vcc','Detn')
      Modified_Data = CheckConfiguration(OriginalConf,'GFSMTMTA_TempWindingHead1VccDetn',Modified_Data);
      CreateSignal('GFSMTMTA_Temp','WindingHead1Vcc','Logged');
      CreateSignal('GFSMTMTA_Temp','WindingHead1Vcc','Detected');
      CreateSignal('GFSMTMTA_Temp','','Logged');
      CreateSignal('GFSMTMTA_Temp','','Detected');
  end
catch
end

% GFTEVEIT_EstOverTempDetn
try
  if (strcmp(class(evalin('base','GFTEVEIT_EstOverTempDetn')),'mpt.Signal'))
      OriginalConf = SaveOriginalConf('GFTEVEIT_EstOverTempDetn');
      SetNewConfiguration('GFTEVEIT_','EstOverTemp','Detn')
      Modified_Data = CheckConfiguration(OriginalConf,'GFTEVEIT_EstOverTempDetn',Modified_Data);
      CreateSignal('GFTEVEIT_','EstOverTemp','Logged');
      CreateSignal('GFTEVEIT_','EstOverTemp','Detected');
      CreateSignal('GFTEVEIT_','','Logged');
      CreateSignal('GFTEVEIT_','','Detected');
  end
catch
end

% GFTMTLCS_CurrentSumErrorDetn
try
  if (strcmp(class(evalin('base','GFTMTLCS_CurrentSumErrorDetn')),'mpt.Signal'))
      OriginalConf = SaveOriginalConf('GFTMTLCS_CurrentSumErrorDetn');
      SetNewConfiguration('GFTMTLCS_','CurrentSumError','Detn')
      Modified_Data = CheckConfiguration(OriginalConf,'GFTMTLCS_CurrentSumErrorDetn',Modified_Data);
      CreateSignal('GFTMTLCS_','CurrentSumError','Logged');
      CreateSignal('GFTMTLCS_','CurrentSumError','Detected');
      CreateSignal('GFTMTLCS_','','Logged');
      CreateSignal('GFTMTLCS_','','Detected');
  end
catch
end

% GFTMTLCS_CurSenrPhaU_GNDDetn
try
  if (strcmp(class(evalin('base','GFTMTLCS_CurSenrPhaU_GNDDetn')),'mpt.Signal'))
      OriginalConf = SaveOriginalConf('GFTMTLCS_CurSenrPhaU_GNDDetn');
      SetNewConfiguration('GFTMTLCS_','CurSenrPhaU_GND','Detn')
      Modified_Data = CheckConfiguration(OriginalConf,'GFTMTLCS_CurSenrPhaU_GNDDetn',Modified_Data);
      CreateSignal('GFTMTLCS_','CurSenrPhaU_GND','Logged');
      CreateSignal('GFTMTLCS_','CurSenrPhaU_GND','Detected');
      CreateSignal('GFTMTLCS_','','Logged');
      CreateSignal('GFTMTLCS_','','Detected');
  end
catch
end

% GFTMTLCS_CurSenrPhaU_VCCDetn
try
  if (strcmp(class(evalin('base','GFTMTLCS_CurSenrPhaU_VCCDetn')),'mpt.Signal'))
      OriginalConf = SaveOriginalConf('GFTMTLCS_CurSenrPhaU_VCCDetn');
      SetNewConfiguration('GFTMTLCS_','CurSenrPhaU_VCC','Detn')
      Modified_Data = CheckConfiguration(OriginalConf,'GFTMTLCS_CurSenrPhaU_VCCDetn',Modified_Data);
      CreateSignal('GFTMTLCS_','CurSenrPhaU_VCC','Logged');
      CreateSignal('GFTMTLCS_','CurSenrPhaU_VCC','Detected');
      CreateSignal('GFTMTLCS_','','Logged');
      CreateSignal('GFTMTLCS_','','Detected');
  end
catch
end

% GFTMTLCS_CurSenrPhaV_GNDDetn
try
  if (strcmp(class(evalin('base','GFTMTLCS_CurSenrPhaV_GNDDetn')),'mpt.Signal'))
      OriginalConf = SaveOriginalConf('GFTMTLCS_CurSenrPhaV_GNDDetn');
      SetNewConfiguration('GFTMTLCS_','CurSenrPhaV_GND','Detn')
      Modified_Data = CheckConfiguration(OriginalConf,'GFTMTLCS_CurSenrPhaV_GNDDetn',Modified_Data);
      CreateSignal('GFTMTLCS_','CurSenrPhaV_GND','Logged');
      CreateSignal('GFTMTLCS_','CurSenrPhaV_GND','Detected');
      CreateSignal('GFTMTLCS_','','Logged');
      CreateSignal('GFTMTLCS_','','Detected');
  end
catch
end

% GFTMTLCS_CurSenrPhaV_VCCDetn
try
  if (strcmp(class(evalin('base','GFTMTLCS_CurSenrPhaV_VCCDetn')),'mpt.Signal'))
      OriginalConf = SaveOriginalConf('GFTMTLCS_CurSenrPhaV_VCCDetn');
      SetNewConfiguration('GFTMTLCS_','CurSenrPhaV_VCC','Detn')
      Modified_Data = CheckConfiguration(OriginalConf,'GFTMTLCS_CurSenrPhaV_VCCDetn',Modified_Data);
      CreateSignal('GFTMTLCS_','CurSenrPhaV_VCC','Logged');
      CreateSignal('GFTMTLCS_','CurSenrPhaV_VCC','Detected');
      CreateSignal('GFTMTLCS_','','Logged');
      CreateSignal('GFTMTLCS_','','Detected');
  end
catch
end

% GFTMTLCS_CurSenrPhaW_GNDDetn
try
  if (strcmp(class(evalin('base','GFTMTLCS_CurSenrPhaW_GNDDetn')),'mpt.Signal'))
      OriginalConf = SaveOriginalConf('GFTMTLCS_CurSenrPhaW_GNDDetn');
      SetNewConfiguration('GFTMTLCS_','CurSenrPhaW_GND','Detn')
      Modified_Data = CheckConfiguration(OriginalConf,'GFTMTLCS_CurSenrPhaW_GNDDetn',Modified_Data);
      CreateSignal('GFTMTLCS_','CurSenrPhaW_GND','Logged');
      CreateSignal('GFTMTLCS_','CurSenrPhaW_GND','Detected');
      CreateSignal('GFTMTLCS_','','Logged');
      CreateSignal('GFTMTLCS_','','Detected');
  end
catch
end

% GFTMTLCS_CurSenrPhaW_VCCDetn
try
  if (strcmp(class(evalin('base','GFTMTLCS_CurSenrPhaW_VCCDetn')),'mpt.Signal'))
      OriginalConf = SaveOriginalConf('GFTMTLCS_CurSenrPhaW_VCCDetn');
      SetNewConfiguration('GFTMTLCS_','CurSenrPhaW_VCC','Detn')
      Modified_Data = CheckConfiguration(OriginalConf,'GFTMTLCS_CurSenrPhaW_VCCDetn',Modified_Data);
      CreateSignal('GFTMTLCS_','CurSenrPhaW_VCC','Logged');
      CreateSignal('GFTMTLCS_','CurSenrPhaW_VCC','Detected');
      CreateSignal('GFTMTLCS_','','Logged');
      CreateSignal('GFTMTLCS_','','Detected');
  end
catch
end

% GSDMTMEP_CosGndDetn
try
  if (strcmp(class(evalin('base','GSDMTMEP_CosGndDetn')),'mpt.Signal'))
      OriginalConf = SaveOriginalConf('GSDMTMEP_CosGndDetn');
      SetNewConfiguration('GSDMTMEP_','CosGnd','Detn')
      Modified_Data = CheckConfiguration(OriginalConf,'GSDMTMEP_CosGndDetn',Modified_Data);
      CreateSignal('GSDMTMEP_','CosGnd','Logged');
      CreateSignal('GSDMTMEP_','CosGnd','Detected');
      CreateSignal('GSDMTMEP_','','Logged');
      CreateSignal('GSDMTMEP_','','Detected');
  end
catch
end

% GSDMTMEP_CosVccDetn
try
  if (strcmp(class(evalin('base','GSDMTMEP_CosVccDetn')),'mpt.Signal'))
      OriginalConf = SaveOriginalConf('GSDMTMEP_CosVccDetn');
      SetNewConfiguration('GSDMTMEP_','CosVcc','Detn')
      Modified_Data = CheckConfiguration(OriginalConf,'GSDMTMEP_CosVccDetn',Modified_Data);
      CreateSignal('GSDMTMEP_','CosVcc','Logged');
      CreateSignal('GSDMTMEP_','CosVcc','Detected');
      CreateSignal('GSDMTMEP_','','Logged');
      CreateSignal('GSDMTMEP_','','Detected');
  end
catch
end

% GSDMTMEP_SinGndDetn
try
  if (strcmp(class(evalin('base','GSDMTMEP_SinGndDetn')),'mpt.Signal'))
      OriginalConf = SaveOriginalConf('GSDMTMEP_SinGndDetn');
      SetNewConfiguration('GSDMTMEP_','SinGnd','Detn')
      Modified_Data = CheckConfiguration(OriginalConf,'GSDMTMEP_SinGndDetn',Modified_Data);
      CreateSignal('GSDMTMEP_','SinGnd','Logged');
      CreateSignal('GSDMTMEP_','SinGnd','Detected');
      CreateSignal('GSDMTMEP_','','Logged');
      CreateSignal('GSDMTMEP_','','Detected');
  end
catch
end

% GSDMTMEP_SinVccDetn
try
  if (strcmp(class(evalin('base','GSDMTMEP_SinVccDetn')),'mpt.Signal'))
      OriginalConf = SaveOriginalConf('GSDMTMEP_SinVccDetn');
      SetNewConfiguration('GSDMTMEP_','SinVcc','Detn')
      Modified_Data = CheckConfiguration(OriginalConf,'GSDMTMEP_SinVccDetn',Modified_Data);
      CreateSignal('GSDMTMEP_','SinVcc','Logged');
      CreateSignal('GSDMTMEP_','SinVcc','Detected');
      CreateSignal('GSDMTMEP_','','Logged');
      CreateSignal('GSDMTMEP_','','Detected');
  end
catch
end

% GSDMTMEP_OverSpeedDetn
try
  if (strcmp(class(evalin('base','GSDMTMEP_OverSpeedDetn')),'mpt.Signal'))
      OriginalConf = SaveOriginalConf('GSDMTMEP_OverSpeedDetn');
      SetNewConfiguration('GSDMTMEP_','OverSpeed','Detn')
      Modified_Data = CheckConfiguration(OriginalConf,'GSDMTMEP_OverSpeedDetn',Modified_Data);
      CreateSignal('GSDMTMEP_','OverSpeed','Logged');
      CreateSignal('GSDMTMEP_','OverSpeed','Detected');
      CreateSignal('GSDMTMEP_','','Logged');
      CreateSignal('GSDMTMEP_','','Detected');
  end
catch
end

% GSDMTMEP_UnderSpeedDetn
try
  if (strcmp(class(evalin('base','GSDMTMEP_UnderSpeedDetn')),'mpt.Signal'))
      OriginalConf = SaveOriginalConf('GSDMTMEP_UnderSpeedDetn');
      SetNewConfiguration('GSDMTMEP_','UnderSpeed','Detn')
      Modified_Data = CheckConfiguration(OriginalConf,'GSDMTMEP_UnderSpeedDetn',Modified_Data);
      CreateSignal('GSDMTMEP_','UnderSpeed','Logged');
      CreateSignal('GSDMTMEP_','UnderSpeed','Detected');
      CreateSignal('GSDMTMEP_','','Logged');
      CreateSignal('GSDMTMEP_','','Detected');
  end
catch
end

% GSDMTMEP_ResSquaSumErrByFTDetn
try
  if (strcmp(class(evalin('base','GSDMTMEP_ResSquaSumErrByFTDetn')),'mpt.Signal'))
      OriginalConf = SaveOriginalConf('GSDMTMEP_ResSquaSumErrByFTDetn');
      SetNewConfiguration('GSDMTMEP_','ResSquaSumErrByFT','Detn')
      Modified_Data = CheckConfiguration(OriginalConf,'GSDMTMEP_ResSquaSumErrByFTDetn',Modified_Data);
      CreateSignal('GSDMTMEP_','ResSquaSumErrByFT','Logged');
      CreateSignal('GSDMTMEP_','ResSquaSumErrByFT','Detected');
      CreateSignal('GSDMTMEP_','','Logged');
      CreateSignal('GSDMTMEP_','','Detected');
  end
catch
end

% GSDMTMEP_SpeedWarnDetn
try
  if (strcmp(class(evalin('base','GSDMTMEP_SpeedWarnDetn')),'mpt.Signal'))
      OriginalConf = SaveOriginalConf('GSDMTMEP_SpeedWarnDetn');
      SetNewConfiguration('GSDMTMEP_','SpeedWarn','Detn')
      Modified_Data = CheckConfiguration(OriginalConf,'GSDMTMEP_SpeedWarnDetn',Modified_Data);
      CreateSignal('GSDMTMEP_','SpeedWarn','Logged');
      CreateSignal('GSDMTMEP_','SpeedWarn','Detected');
      CreateSignal('GSDMTMEP_','','Logged');
      CreateSignal('GSDMTMEP_','','Detected');
  end
catch
end

% GFTCMTCS_VoltageMarginLowDetn
try
  if (strcmp(class(evalin('base','GFTCMTCS_VoltageMarginLowDetn')),'mpt.Signal'))
      OriginalConf = SaveOriginalConf('GFTCMTCS_VoltageMarginLowDetn');
      SetNewConfiguration('GFTCMTCS_','VoltageMarginLow','Detn')
      Modified_Data = CheckConfiguration(OriginalConf,'GFTCMTCS_VoltageMarginLowDetn',Modified_Data);
      CreateSignal('GFTCMTCS_','VoltageMarginLow','Logged');
      CreateSignal('GFTCMTCS_','VoltageMarginLow','Detected');
      CreateSignal('GFTCMTCS_','','Logged');
      CreateSignal('GFTCMTCS_','','Detected');
  end
catch
end

% GFTASBDS_BattVoltDeratingActDetn
try
  if (strcmp(class(evalin('base','GFTASBDS_BattVoltDeratingActDetn')),'mpt.Signal'))
      OriginalConf = SaveOriginalConf('GFTASBDS_BattVoltDeratingActDetn');
      SetNewConfiguration('GFTASBDS_','BattVoltDeratingAct','Detn')
      Modified_Data = CheckConfiguration(OriginalConf,'GFTASBDS_BattVoltDeratingActDetn',Modified_Data);
      CreateSignal('GFTASBDS_','BattVoltDeratingAct','Logged');
      CreateSignal('GFTASBDS_','BattVoltDeratingAct','Detected');
      CreateSignal('GFTASBDS_','','Logged');
      CreateSignal('GFTASBDS_','','Detected');
  end
catch
end

% GFTASETP_EstPmDeratingActDetn
try
  if (strcmp(class(evalin('base','GFTASETP_EstPmDeratingActDetn')),'mpt.Signal'))
      OriginalConf = SaveOriginalConf('GFTASETP_EstPmDeratingActDetn');
      SetNewConfiguration('GFTASETP_','EstPmDeratingAct','Detn')
      Modified_Data = CheckConfiguration(OriginalConf,'GFTASETP_EstPmDeratingActDetn',Modified_Data);
      CreateSignal('GFTASETP_','EstPmDeratingAct','Logged');
      CreateSignal('GFTASETP_','EstPmDeratingAct','Detected');
      CreateSignal('GFTASETP_','','Logged');
      CreateSignal('GFTASETP_','','Detected');
  end
catch
end

% GFTASETP_PmDeratingActDetn
try
  if (strcmp(class(evalin('base','GFTASETP_PmDeratingActDetn')),'mpt.Signal'))
      OriginalConf = SaveOriginalConf('GFTASETP_PmDeratingActDetn');
      SetNewConfiguration('GFTASETP_','PmDeratingAct','Detn')
      Modified_Data = CheckConfiguration(OriginalConf,'GFTASETP_PmDeratingActDetn',Modified_Data);
      CreateSignal('GFTASETP_','PmDeratingAct','Logged');
      CreateSignal('GFTASETP_','PmDeratingAct','Detected');
      CreateSignal('GFTASETP_','','Logged');
      CreateSignal('GFTASETP_','','Detected');
  end
catch
end

% GFTASMTP_Wndg1DeratingActDetn
try
  if (strcmp(class(evalin('base','GFTASMTP_Wndg1DeratingActDetn')),'mpt.Signal'))
      OriginalConf = SaveOriginalConf('GFTASMTP_Wndg1DeratingActDetn');
      SetNewConfiguration('GFTASMTP_','Wndg1DeratingAct','Detn')
      Modified_Data = CheckConfiguration(OriginalConf,'GFTASMTP_Wndg1DeratingActDetn',Modified_Data);
      CreateSignal('GFTASMTP_','Wndg1DeratingAct','Logged');
      CreateSignal('GFTASMTP_','Wndg1DeratingAct','Detected');
      CreateSignal('GFTASMTP_','','Logged');
      CreateSignal('GFTASMTP_','','Detected');
  end
catch
end

% GFTASMTP_WndgRateDrt1Detn
try
  if (strcmp(class(evalin('base','GFTASMTP_WndgRateDrt1Detn')),'mpt.Signal'))
      OriginalConf = SaveOriginalConf('GFTASMTP_WndgRateDrt1Detn');
      SetNewConfiguration('GFTASMTP_','WndgRateDrt1','Detn')
      Modified_Data = CheckConfiguration(OriginalConf,'GFTASMTP_WndgRateDrt1Detn',Modified_Data);
      CreateSignal('GFTASMTP_','WndgRateDrt1','Logged');
      CreateSignal('GFTASMTP_','WndgRateDrt1','Detected');
      CreateSignal('GFTASMTP_','','Logged');
      CreateSignal('GFTASMTP_','','Detected');
  end
catch
end

% GFTASMTP_WndgUnderRateDrt1Detn
try
  if (strcmp(class(evalin('base','GFTASMTP_WndgUnderRateDrt1Detn')),'mpt.Signal'))
      OriginalConf = SaveOriginalConf('GFTASMTP_WndgUnderRateDrt1Detn');
      SetNewConfiguration('GFTASMTP_','WndgUnderRateDrt1','Detn')
      Modified_Data = CheckConfiguration(OriginalConf,'GFTASMTP_WndgUnderRateDrt1Detn',Modified_Data);
      CreateSignal('GFTASMTP_','WndgUnderRateDrt1','Logged');
      CreateSignal('GFTASMTP_','WndgUnderRateDrt1','Detected');
      CreateSignal('GFTASMTP_','','Logged');
      CreateSignal('GFTASMTP_','','Detected');
  end
catch
end

% GFTASMTP_WndgRateDrt2Detn
try
  if (strcmp(class(evalin('base','GFTASMTP_WndgRateDrt2Detn')),'mpt.Signal'))
      OriginalConf = SaveOriginalConf('GFTASMTP_WndgRateDrt2Detn');
      SetNewConfiguration('GFTASMTP_','WndgRateDrt2','Detn')
      Modified_Data = CheckConfiguration(OriginalConf,'GFTASMTP_WndgRateDrt2Detn',Modified_Data);
      CreateSignal('GFTASMTP_','WndgRateDrt2','Logged');
      CreateSignal('GFTASMTP_','WndgRateDrt2','Detected');
      CreateSignal('GFTASMTP_','','Logged');
      CreateSignal('GFTASMTP_','','Detected');
  end
catch
end

% GFTASMTP_WndgUnderRateDrt2Detn
try
  if (strcmp(class(evalin('base','GFTASMTP_WndgUnderRateDrt2Detn')),'mpt.Signal'))
      OriginalConf = SaveOriginalConf('GFTASMTP_WndgUnderRateDrt2Detn');
      SetNewConfiguration('GFTASMTP_','WndgUnderRateDrt2','Detn')
      Modified_Data = CheckConfiguration(OriginalConf,'GFTASMTP_WndgUnderRateDrt2Detn',Modified_Data);
      CreateSignal('GFTASMTP_','WndgUnderRateDrt2','Logged');
      CreateSignal('GFTASMTP_','WndgUnderRateDrt2','Detected');
      CreateSignal('GFTASMTP_','','Logged');
      CreateSignal('GFTASMTP_','','Detected');
  end
catch
end

% GFTASOSP_MotorSpdDeratingActDetn
try
  if (strcmp(class(evalin('base','GFTASOSP_MotorSpdDeratingActDetn')),'mpt.Signal'))
      OriginalConf = SaveOriginalConf('GFTASOSP_MotorSpdDeratingActDetn');
      SetNewConfiguration('GFTASOSP_','MotorSpdDeratingAct','Detn')
      Modified_Data = CheckConfiguration(OriginalConf,'GFTASOSP_MotorSpdDeratingActDetn',Modified_Data);
      CreateSignal('GFTASOSP_','MotorSpdDeratingAct','Logged');
      CreateSignal('GFTASOSP_','MotorSpdDeratingAct','Detected');
      CreateSignal('GFTASOSP_','','Logged');
      CreateSignal('GFTASOSP_','','Detected');
  end
catch
end

% GFTCMSCS_SpdOvershootDetn
try
  if (strcmp(class(evalin('base','GFTCMSCS_SpdOvershootDetn')),'mpt.Signal'))
      OriginalConf = SaveOriginalConf('GFTCMSCS_SpdOvershootDetn');
      SetNewConfiguration('GFTCMSCS_','SpdOvershoot','Detn')
      Modified_Data = CheckConfiguration(OriginalConf,'GFTCMSCS_SpdOvershootDetn',Modified_Data);
      CreateSignal('GFTCMSCS_','SpdOvershoot','Logged');
      CreateSignal('GFTCMSCS_','SpdOvershoot','Detected');
      CreateSignal('GFTCMSCS_','','Logged');
      CreateSignal('GFTCMSCS_','','Detected');
  end
catch
end

% ABSW_HW_FPGA_IGBT_HDetn
try
  if (strcmp(class(evalin('base','ABSW_HW_FPGA_IGBT_HDetn')),'mpt.Signal'))
      OriginalConf = SaveOriginalConf('ABSW_HW_FPGA_IGBT_HDetn');
      SetNewConfiguration('ABSW_HW_','FPGA_IGBT_H','Detn')
      Modified_Data = CheckConfiguration(OriginalConf,'ABSW_HW_FPGA_IGBT_HDetn',Modified_Data);
      CreateSignal('ABSW_HW_','FPGA_IGBT_H','Logged');
      CreateSignal('ABSW_HW_','FPGA_IGBT_H','Detected');
      CreateSignal('ABSW_HW_','','Logged');
      CreateSignal('ABSW_HW_','','Detected');
  end
catch
end

% ABSW_HW_FPGA_IGBT_LDetn
try
  if (strcmp(class(evalin('base','ABSW_HW_FPGA_IGBT_LDetn')),'mpt.Signal'))
      OriginalConf = SaveOriginalConf('ABSW_HW_FPGA_IGBT_LDetn');
      SetNewConfiguration('ABSW_HW_','FPGA_IGBT_L','Detn')
      Modified_Data = CheckConfiguration(OriginalConf,'ABSW_HW_FPGA_IGBT_LDetn',Modified_Data);
      CreateSignal('ABSW_HW_','FPGA_IGBT_L','Logged');
      CreateSignal('ABSW_HW_','FPGA_IGBT_L','Detected');
      CreateSignal('ABSW_HW_','','Logged');
      CreateSignal('ABSW_HW_','','Detected');
  end
catch
end

% ABSW_HW_FPGA_OverUnderCurUIDetn
try
  if (strcmp(class(evalin('base','ABSW_HW_FPGA_OverUnderCurUIDetn')),'mpt.Signal'))
      OriginalConf = SaveOriginalConf('ABSW_HW_FPGA_OverUnderCurUIDetn');
      SetNewConfiguration('ABSW_HW_','FPGA_OverUnderCurUI','Detn')
      Modified_Data = CheckConfiguration(OriginalConf,'ABSW_HW_FPGA_OverUnderCurUIDetn',Modified_Data);
      CreateSignal('ABSW_HW_','FPGA_OverUnderCurUI','Logged');
      CreateSignal('ABSW_HW_','FPGA_OverUnderCurUI','Detected');
      CreateSignal('ABSW_HW_','','Logged');
      CreateSignal('ABSW_HW_','','Detected');
  end
catch
end

% ABSW_HW_FPGA_OverUnderCurVIDetn
try
  if (strcmp(class(evalin('base','ABSW_HW_FPGA_OverUnderCurVIDetn')),'mpt.Signal'))
      OriginalConf = SaveOriginalConf('ABSW_HW_FPGA_OverUnderCurVIDetn');
      SetNewConfiguration('ABSW_HW_','FPGA_OverUnderCurVI','Detn')
      Modified_Data = CheckConfiguration(OriginalConf,'ABSW_HW_FPGA_OverUnderCurVIDetn',Modified_Data);
      CreateSignal('ABSW_HW_','FPGA_OverUnderCurVI','Logged');
      CreateSignal('ABSW_HW_','FPGA_OverUnderCurVI','Detected');
      CreateSignal('ABSW_HW_','','Logged');
      CreateSignal('ABSW_HW_','','Detected');
  end
catch
end

% ABSW_HW_FPGA_OverUnderCurWIDetn
try
  if (strcmp(class(evalin('base','ABSW_HW_FPGA_OverUnderCurWIDetn')),'mpt.Signal'))
      OriginalConf = SaveOriginalConf('ABSW_HW_FPGA_OverUnderCurWIDetn');
      SetNewConfiguration('ABSW_HW_','FPGA_OverUnderCurWI','Detn')
      Modified_Data = CheckConfiguration(OriginalConf,'ABSW_HW_FPGA_OverUnderCurWIDetn',Modified_Data);
      CreateSignal('ABSW_HW_','FPGA_OverUnderCurWI','Logged');
      CreateSignal('ABSW_HW_','FPGA_OverUnderCurWI','Detected');
      CreateSignal('ABSW_HW_','','Logged');
      CreateSignal('ABSW_HW_','','Detected');
  end
catch
end

% ABSW_HW2_FPGA_OverVoltVBatDetn
try
  if (strcmp(class(evalin('base','ABSW_HW2_FPGA_OverVoltVBatDetn')),'mpt.Signal'))
      OriginalConf = SaveOriginalConf('ABSW_HW2_FPGA_OverVoltVBatDetn');
      SetNewConfiguration('ABSW_HW2_','FPGA_OverVoltVBat','Detn')
      Modified_Data = CheckConfiguration(OriginalConf,'ABSW_HW2_FPGA_OverVoltVBatDetn',Modified_Data);
      CreateSignal('ABSW_HW2_','FPGA_OverVoltVBat','Logged');
      CreateSignal('ABSW_HW2_','FPGA_OverVoltVBat','Detected');
      CreateSignal('ABSW_HW2_','','Logged');
      CreateSignal('ABSW_HW2_','','Detected');
  end
catch
end

% ABSW_COM_BusOff_CAN1Detn
try
  if (strcmp(class(evalin('base','ABSW_COM_BusOff_CAN1Detn')),'mpt.Signal'))
      OriginalConf = SaveOriginalConf('ABSW_COM_BusOff_CAN1Detn');
      SetNewConfiguration('ABSW_COM_','BusOff_CAN1','Detn')
      Modified_Data = CheckConfiguration(OriginalConf,'ABSW_COM_BusOff_CAN1Detn',Modified_Data);
      CreateSignal('ABSW_COM_','BusOff_CAN1','Logged');
      CreateSignal('ABSW_COM_','BusOff_CAN1','Detected');
      CreateSignal('ABSW_COM_','','Logged');
      CreateSignal('ABSW_COM_','','Detected');
  end
catch
end

% ABSW_COM_TimoutRxVCUDetn
try
  if (strcmp(class(evalin('base','ABSW_COM_TimoutRxVCUDetn')),'mpt.Signal'))
      OriginalConf = SaveOriginalConf('ABSW_COM_TimoutRxVCUDetn');
      SetNewConfiguration('ABSW_COM_','TimoutRxVCU','Detn')
      Modified_Data = CheckConfiguration(OriginalConf,'ABSW_COM_TimoutRxVCUDetn',Modified_Data);
      CreateSignal('ABSW_COM_','TimoutRxVCU','Logged');
      CreateSignal('ABSW_COM_','TimoutRxVCU','Detected');
      CreateSignal('ABSW_COM_','','Logged');
      CreateSignal('ABSW_COM_','','Detected');
  end
catch
end

% AFSEVBHV_OverVoltageDetn
try
  if (strcmp(class(evalin('base','AFSEVBHV_OverVoltageDetn')),'mpt.Signal'))
      OriginalConf = SaveOriginalConf('AFSEVBHV_OverVoltageDetn');
      SetNewConfiguration('AFSEVBHV_','OverVoltage','Detn')
      Modified_Data = CheckConfiguration(OriginalConf,'AFSEVBHV_OverVoltageDetn',Modified_Data);
      CreateSignal('AFSEVBHV_','OverVoltage','Logged');
      CreateSignal('AFSEVBHV_','OverVoltage','Detected');
      CreateSignal('AFSEVBHV_','','Logged');
      CreateSignal('AFSEVBHV_','','Detected');
  end
catch
end

% AFSEVBHV_UnderVoltageDetn
try
  if (strcmp(class(evalin('base','AFSEVBHV_UnderVoltageDetn')),'mpt.Signal'))
      OriginalConf = SaveOriginalConf('AFSEVBHV_UnderVoltageDetn');
      SetNewConfiguration('AFSEVBHV_','UnderVoltage','Detn')
      Modified_Data = CheckConfiguration(OriginalConf,'AFSEVBHV_UnderVoltageDetn',Modified_Data);
      CreateSignal('AFSEVBHV_','UnderVoltage','Logged');
      CreateSignal('AFSEVBHV_','UnderVoltage','Detected');
      CreateSignal('AFSEVBHV_','','Logged');
      CreateSignal('AFSEVBHV_','','Detected');
  end
catch
end

% AFSEVBHV_VoltageVccDetn
try
  if (strcmp(class(evalin('base','AFSEVBHV_VoltageVccDetn')),'mpt.Signal'))
      OriginalConf = SaveOriginalConf('AFSEVBHV_VoltageVccDetn');
      SetNewConfiguration('AFSEVBHV_','VoltageVcc','Detn')
      Modified_Data = CheckConfiguration(OriginalConf,'AFSEVBHV_VoltageVccDetn',Modified_Data);
      CreateSignal('AFSEVBHV_','VoltageVcc','Logged');
      CreateSignal('AFSEVBHV_','VoltageVcc','Detected');
      CreateSignal('AFSEVBHV_','','Logged');
      CreateSignal('AFSEVBHV_','','Detected');
  end
catch
end

% AFSEVBHV_VoltageGndDetn
try
  if (strcmp(class(evalin('base','AFSEVBHV_VoltageGndDetn')),'mpt.Signal'))
      OriginalConf = SaveOriginalConf('AFSEVBHV_VoltageGndDetn');
      SetNewConfiguration('AFSEVBHV_','VoltageGnd','Detn')
      Modified_Data = CheckConfiguration(OriginalConf,'AFSEVBHV_VoltageGndDetn',Modified_Data);
      CreateSignal('AFSEVBHV_','VoltageGnd','Logged');
      CreateSignal('AFSEVBHV_','VoltageGnd','Detected');
      CreateSignal('AFSEVBHV_','','Logged');
      CreateSignal('AFSEVBHV_','','Detected');
  end
catch
end

% AFSEVBLV_OverVoltageDetn
try
  if (strcmp(class(evalin('base','AFSEVBLV_OverVoltageDetn')),'mpt.Signal'))
      OriginalConf = SaveOriginalConf('AFSEVBLV_OverVoltageDetn');
      SetNewConfiguration('AFSEVBLV_','OverVoltage','Detn')
      Modified_Data = CheckConfiguration(OriginalConf,'AFSEVBLV_OverVoltageDetn',Modified_Data);
      CreateSignal('AFSEVBLV_','OverVoltage','Logged');
      CreateSignal('AFSEVBLV_','OverVoltage','Detected');
      CreateSignal('AFSEVBLV_','','Logged');
      CreateSignal('AFSEVBLV_','','Detected');
  end
catch
end

% AFSEVBLV_UnderVoltageDetn
try
  if (strcmp(class(evalin('base','AFSEVBLV_UnderVoltageDetn')),'mpt.Signal'))
      OriginalConf = SaveOriginalConf('AFSEVBLV_UnderVoltageDetn');
      SetNewConfiguration('AFSEVBLV_','UnderVoltage','Detn')
      Modified_Data = CheckConfiguration(OriginalConf,'AFSEVBLV_UnderVoltageDetn',Modified_Data);
      CreateSignal('AFSEVBLV_','UnderVoltage','Logged');
      CreateSignal('AFSEVBLV_','UnderVoltage','Detected');
      CreateSignal('AFSEVBLV_','','Logged');
      CreateSignal('AFSEVBLV_','','Detected');
  end
catch
end

% AFSEVBLV_P5VRefADCFltDetn
try
  if (strcmp(class(evalin('base','AFSEVBLV_P5VRefADCFltDetn')),'mpt.Signal'))
      OriginalConf = SaveOriginalConf('AFSEVBLV_P5VRefADCFltDetn');
      SetNewConfiguration('AFSEVBLV_','P5VRefADCFlt','Detn')
      Modified_Data = CheckConfiguration(OriginalConf,'AFSEVBLV_P5VRefADCFltDetn',Modified_Data);
      CreateSignal('AFSEVBLV_','P5VRefADCFlt','Logged');
      CreateSignal('AFSEVBLV_','P5VRefADCFlt','Detected');
      CreateSignal('AFSEVBLV_','','Logged');
      CreateSignal('AFSEVBLV_','','Detected');
  end
catch
end

% AFSEVETA_IgbtTempRationalDetn
try
  if (strcmp(class(evalin('base','AFSEVETA_IgbtTempRationalDetn')),'mpt.Signal'))
      OriginalConf = SaveOriginalConf('AFSEVETA_IgbtTempRationalDetn');
      SetNewConfiguration('AFSEVETA_','IgbtTempRational','Detn')
      Modified_Data = CheckConfiguration(OriginalConf,'AFSEVETA_IgbtTempRationalDetn',Modified_Data);
      CreateSignal('AFSEVETA_','IgbtTempRational','Logged');
      CreateSignal('AFSEVETA_','IgbtTempRational','Detected');
      CreateSignal('AFSEVETA_','','Logged');
      CreateSignal('AFSEVETA_','','Detected');
  end
catch
end

% AFSEVETA_OverTempNTC1CmdBoardDetn
try
  if (strcmp(class(evalin('base','AFSEVETA_OverTempNTC1CmdBoardDetn')),'mpt.Signal'))
      OriginalConf = SaveOriginalConf('AFSEVETA_OverTempNTC1CmdBoardDetn');
      SetNewConfiguration('AFSEVETA_','OverTempNTC1CmdBoard','Detn')
      Modified_Data = CheckConfiguration(OriginalConf,'AFSEVETA_OverTempNTC1CmdBoardDetn',Modified_Data);
      CreateSignal('AFSEVETA_','OverTempNTC1CmdBoard','Logged');
      CreateSignal('AFSEVETA_','OverTempNTC1CmdBoard','Detected');
      CreateSignal('AFSEVETA_','','Logged');
      CreateSignal('AFSEVETA_','','Detected');
  end
catch
end

% AFSEVETA_OverTempDrvLeftDetn
try
  if (strcmp(class(evalin('base','AFSEVETA_OverTempDrvLeftDetn')),'mpt.Signal'))
      OriginalConf = SaveOriginalConf('AFSEVETA_OverTempDrvLeftDetn');
      SetNewConfiguration('AFSEVETA_Over','TempDrvLeft','Detn')
      Modified_Data = CheckConfiguration(OriginalConf,'AFSEVETA_OverTempDrvLeftDetn',Modified_Data);
      CreateSignal('AFSEVETA_Over','TempDrvLeft','Logged');
      CreateSignal('AFSEVETA_Over','TempDrvLeft','Detected');
      CreateSignal('AFSEVETA_Over','','Logged');
      CreateSignal('AFSEVETA_Over','','Detected');
  end
catch
end

% AFSEVETA_OverTempIgbtLeftDetn
try
  if (strcmp(class(evalin('base','AFSEVETA_OverTempIgbtLeftDetn')),'mpt.Signal'))
      OriginalConf = SaveOriginalConf('AFSEVETA_OverTempIgbtLeftDetn');
      SetNewConfiguration('AFSEVETA_Over','TempIgbtLeft','Detn')
      Modified_Data = CheckConfiguration(OriginalConf,'AFSEVETA_OverTempIgbtLeftDetn',Modified_Data);
      CreateSignal('AFSEVETA_Over','TempIgbtLeft','Logged');
      CreateSignal('AFSEVETA_Over','TempIgbtLeft','Detected');
      CreateSignal('AFSEVETA_Over','','Logged');
      CreateSignal('AFSEVETA_Over','','Detected');
  end
catch
end

% AFSMTMTA_OverTempWdgHead1Detn
try
  if (strcmp(class(evalin('base','AFSMTMTA_OverTempWdgHead1Detn')),'mpt.Signal'))
      OriginalConf = SaveOriginalConf('AFSMTMTA_OverTempWdgHead1Detn');
      SetNewConfiguration('AFSMTMTA_Over','TempWdgHead1','Detn')
      Modified_Data = CheckConfiguration(OriginalConf,'AFSMTMTA_OverTempWdgHead1Detn',Modified_Data);
      CreateSignal('AFSMTMTA_Over','TempWdgHead1','Logged');
      CreateSignal('AFSMTMTA_Over','TempWdgHead1','Detected');
      CreateSignal('AFSMTMTA_Over','','Logged');
      CreateSignal('AFSMTMTA_Over','','Detected');
  end
catch
end

% AFSEVETA_TempIgbtLeftGndDetn
try
  if (strcmp(class(evalin('base','AFSEVETA_TempIgbtLeftGndDetn')),'mpt.Signal'))
      OriginalConf = SaveOriginalConf('AFSEVETA_TempIgbtLeftGndDetn');
      SetNewConfiguration('AFSEVETA_Temp','IgbtLeftGnd','Detn')
      Modified_Data = CheckConfiguration(OriginalConf,'AFSEVETA_TempIgbtLeftGndDetn',Modified_Data);
      CreateSignal('AFSEVETA_Temp','IgbtLeftGnd','Logged');
      CreateSignal('AFSEVETA_Temp','IgbtLeftGnd','Detected');
      CreateSignal('AFSEVETA_Temp','','Logged');
      CreateSignal('AFSEVETA_Temp','','Detected');
  end
catch
end

% AFSEVETA_TempIgbtLeftVccDetn
try
  if (strcmp(class(evalin('base','AFSEVETA_TempIgbtLeftVccDetn')),'mpt.Signal'))
      OriginalConf = SaveOriginalConf('AFSEVETA_TempIgbtLeftVccDetn');
      SetNewConfiguration('AFSEVETA_Temp','IgbtLeftVcc','Detn')
      Modified_Data = CheckConfiguration(OriginalConf,'AFSEVETA_TempIgbtLeftVccDetn',Modified_Data);
      CreateSignal('AFSEVETA_Temp','IgbtLeftVcc','Logged');
      CreateSignal('AFSEVETA_Temp','IgbtLeftVcc','Detected');
      CreateSignal('AFSEVETA_Temp','','Logged');
      CreateSignal('AFSEVETA_Temp','','Detected');
  end
catch
end

% AFSMTMTA_TempWindingHead1GndDetn
try
  if (strcmp(class(evalin('base','AFSMTMTA_TempWindingHead1GndDetn')),'mpt.Signal'))
      OriginalConf = SaveOriginalConf('AFSMTMTA_TempWindingHead1GndDetn');
      SetNewConfiguration('AFSMTMTA_Temp','WindingHead1Gnd','Detn')
      Modified_Data = CheckConfiguration(OriginalConf,'AFSMTMTA_TempWindingHead1GndDetn',Modified_Data);
      CreateSignal('AFSMTMTA_Temp','WindingHead1Gnd','Logged');
      CreateSignal('AFSMTMTA_Temp','WindingHead1Gnd','Detected');
      CreateSignal('AFSMTMTA_Temp','','Logged');
      CreateSignal('AFSMTMTA_Temp','','Detected');
  end
catch
end

% AFSMTMTA_TempWindingHead1VccDetn
try
  if (strcmp(class(evalin('base','AFSMTMTA_TempWindingHead1VccDetn')),'mpt.Signal'))
      OriginalConf = SaveOriginalConf('AFSMTMTA_TempWindingHead1VccDetn');
      SetNewConfiguration('AFSMTMTA_Temp','WindingHead1Vcc','Detn')
      Modified_Data = CheckConfiguration(OriginalConf,'AFSMTMTA_TempWindingHead1VccDetn',Modified_Data);
      CreateSignal('AFSMTMTA_Temp','WindingHead1Vcc','Logged');
      CreateSignal('AFSMTMTA_Temp','WindingHead1Vcc','Detected');
      CreateSignal('AFSMTMTA_Temp','','Logged');
      CreateSignal('AFSMTMTA_Temp','','Detected');
  end
catch
end

% AFTMTLCS_CurrentSumErrorDetn
try
  if (strcmp(class(evalin('base','AFTMTLCS_CurrentSumErrorDetn')),'mpt.Signal'))
      OriginalConf = SaveOriginalConf('AFTMTLCS_CurrentSumErrorDetn');
      SetNewConfiguration('AFTMTLCS_','CurrentSumError','Detn')
      Modified_Data = CheckConfiguration(OriginalConf,'AFTMTLCS_CurrentSumErrorDetn',Modified_Data);
      CreateSignal('AFTMTLCS_','CurrentSumError','Logged');
      CreateSignal('AFTMTLCS_','CurrentSumError','Detected');
      CreateSignal('AFTMTLCS_','','Logged');
      CreateSignal('AFTMTLCS_','','Detected');
  end
catch
end

% AFTMTLCS_CurSenrPhaU_GNDDetn
try
  if (strcmp(class(evalin('base','AFTMTLCS_CurSenrPhaU_GNDDetn')),'mpt.Signal'))
      OriginalConf = SaveOriginalConf('AFTMTLCS_CurSenrPhaU_GNDDetn');
      SetNewConfiguration('AFTMTLCS_','CurSenrPhaU_GND','Detn')
      Modified_Data = CheckConfiguration(OriginalConf,'AFTMTLCS_CurSenrPhaU_GNDDetn',Modified_Data);
      CreateSignal('AFTMTLCS_','CurSenrPhaU_GND','Logged');
      CreateSignal('AFTMTLCS_','CurSenrPhaU_GND','Detected');
      CreateSignal('AFTMTLCS_','','Logged');
      CreateSignal('AFTMTLCS_','','Detected');
  end
catch
end

% AFTMTLCS_CurSenrPhaU_VCCDetn
try
  if (strcmp(class(evalin('base','AFTMTLCS_CurSenrPhaU_VCCDetn')),'mpt.Signal'))
      OriginalConf = SaveOriginalConf('AFTMTLCS_CurSenrPhaU_VCCDetn');
      SetNewConfiguration('AFTMTLCS_','CurSenrPhaU_VCC','Detn')
      Modified_Data = CheckConfiguration(OriginalConf,'AFTMTLCS_CurSenrPhaU_VCCDetn',Modified_Data);
      CreateSignal('AFTMTLCS_','CurSenrPhaU_VCC','Logged');
      CreateSignal('AFTMTLCS_','CurSenrPhaU_VCC','Detected');
      CreateSignal('AFTMTLCS_','','Logged');
      CreateSignal('AFTMTLCS_','','Detected');
  end
catch
end

% AFTMTLCS_CurSenrPhaV_GNDDetn
try
  if (strcmp(class(evalin('base','AFTMTLCS_CurSenrPhaV_GNDDetn')),'mpt.Signal'))
      OriginalConf = SaveOriginalConf('AFTMTLCS_CurSenrPhaV_GNDDetn');
      SetNewConfiguration('AFTMTLCS_','CurSenrPhaV_GND','Detn')
      Modified_Data = CheckConfiguration(OriginalConf,'AFTMTLCS_CurSenrPhaV_GNDDetn',Modified_Data);
      CreateSignal('AFTMTLCS_','CurSenrPhaV_GND','Logged');
      CreateSignal('AFTMTLCS_','CurSenrPhaV_GND','Detected');
      CreateSignal('AFTMTLCS_','','Logged');
      CreateSignal('AFTMTLCS_','','Detected');
  end
catch
end

% AFTMTLCS_CurSenrPhaV_VCCDetn
try
  if (strcmp(class(evalin('base','AFTMTLCS_CurSenrPhaV_VCCDetn')),'mpt.Signal'))
      OriginalConf = SaveOriginalConf('AFTMTLCS_CurSenrPhaV_VCCDetn');
      SetNewConfiguration('AFTMTLCS_','CurSenrPhaV_VCC','Detn')
      Modified_Data = CheckConfiguration(OriginalConf,'AFTMTLCS_CurSenrPhaV_VCCDetn',Modified_Data);
      CreateSignal('AFTMTLCS_','CurSenrPhaV_VCC','Logged');
      CreateSignal('AFTMTLCS_','CurSenrPhaV_VCC','Detected');
      CreateSignal('AFTMTLCS_','','Logged');
      CreateSignal('AFTMTLCS_','','Detected');
  end
catch
end

% AFTMTLCS_CurSenrPhaW_GNDDetn
try
  if (strcmp(class(evalin('base','AFTMTLCS_CurSenrPhaW_GNDDetn')),'mpt.Signal'))
      OriginalConf = SaveOriginalConf('AFTMTLCS_CurSenrPhaW_GNDDetn');
      SetNewConfiguration('AFTMTLCS_','CurSenrPhaW_GND','Detn')
      Modified_Data = CheckConfiguration(OriginalConf,'AFTMTLCS_CurSenrPhaW_GNDDetn',Modified_Data);
      CreateSignal('AFTMTLCS_','CurSenrPhaW_GND','Logged');
      CreateSignal('AFTMTLCS_','CurSenrPhaW_GND','Detected');
      CreateSignal('AFTMTLCS_','','Logged');
      CreateSignal('AFTMTLCS_','','Detected');
  end
catch
end

% AFTMTLCS_CurSenrPhaW_VCCDetn
try
  if (strcmp(class(evalin('base','AFTMTLCS_CurSenrPhaW_VCCDetn')),'mpt.Signal'))
      OriginalConf = SaveOriginalConf('AFTMTLCS_CurSenrPhaW_VCCDetn');
      SetNewConfiguration('AFTMTLCS_','CurSenrPhaW_VCC','Detn')
      Modified_Data = CheckConfiguration(OriginalConf,'AFTMTLCS_CurSenrPhaW_VCCDetn',Modified_Data);
      CreateSignal('AFTMTLCS_','CurSenrPhaW_VCC','Logged');
      CreateSignal('AFTMTLCS_','CurSenrPhaW_VCC','Detected');
      CreateSignal('AFTMTLCS_','','Logged');
      CreateSignal('AFTMTLCS_','','Detected');
  end
catch
end

% AFTMTLCS_ContorOverLoadDetn
try
  if (strcmp(class(evalin('base','AFTMTLCS_ContorOverLoadDetn')),'mpt.Signal'))
      OriginalConf = SaveOriginalConf('AFTMTLCS_ContorOverLoadDetn');
      SetNewConfiguration('AFTMTLCS_','ContorOverLoad','Detn')
      Modified_Data = CheckConfiguration(OriginalConf,'AFTMTLCS_ContorOverLoadDetn',Modified_Data);
      CreateSignal('AFTMTLCS_','ContorOverLoad','Logged');
      CreateSignal('AFTMTLCS_','ContorOverLoad','Detected');
      CreateSignal('AFTMTLCS_','','Logged');
      CreateSignal('AFTMTLCS_','','Detected');
  end
catch
end

% AFTMTLCS_MotorOverLoadDetn
try
  if (strcmp(class(evalin('base','AFTMTLCS_MotorOverLoadDetn')),'mpt.Signal'))
      OriginalConf = SaveOriginalConf('AFTMTLCS_MotorOverLoadDetn');
      SetNewConfiguration('AFTMTLCS_','MotorOverLoad','Detn')
      Modified_Data = CheckConfiguration(OriginalConf,'AFTMTLCS_MotorOverLoadDetn',Modified_Data);
      CreateSignal('AFTMTLCS_','MotorOverLoad','Logged');
      CreateSignal('AFTMTLCS_','MotorOverLoad','Detected');
      CreateSignal('AFTMTLCS_','','Logged');
      CreateSignal('AFTMTLCS_','','Detected');
  end
catch
end

% AFTMTLCS_RunForLongTimeDetn
try
  if (strcmp(class(evalin('base','AFTMTLCS_RunForLongTimeDetn')),'mpt.Signal'))
      OriginalConf = SaveOriginalConf('AFTMTLCS_RunForLongTimeDetn');
      SetNewConfiguration('AFTMTLCS_','RunForLongTime','Detn')
      Modified_Data = CheckConfiguration(OriginalConf,'AFTMTLCS_RunForLongTimeDetn',Modified_Data);
      CreateSignal('AFTMTLCS_','RunForLongTime','Logged');
      CreateSignal('AFTMTLCS_','RunForLongTime','Detected');
      CreateSignal('AFTMTLCS_','','Logged');
      CreateSignal('AFTMTLCS_','','Detected');
  end
catch
end

% AFTCMTCS_VoltageMarginLowDetn
try
  if (strcmp(class(evalin('base','AFTCMTCS_VoltageMarginLowDetn')),'mpt.Signal'))
      OriginalConf = SaveOriginalConf('AFTCMTCS_VoltageMarginLowDetn');
      SetNewConfiguration('AFTCMTCS_','VoltageMarginLow','Detn')
      Modified_Data = CheckConfiguration(OriginalConf,'AFTCMTCS_VoltageMarginLowDetn',Modified_Data);
      CreateSignal('AFTCMTCS_','VoltageMarginLow','Logged');
      CreateSignal('AFTCMTCS_','VoltageMarginLow','Detected');
      CreateSignal('AFTCMTCS_','','Logged');
      CreateSignal('AFTCMTCS_','','Detected');
  end
catch
end

% AFTASBDS_BattVoltDeratingActDetn
try
  if (strcmp(class(evalin('base','AFTASBDS_BattVoltDeratingActDetn')),'mpt.Signal'))
      OriginalConf = SaveOriginalConf('AFTASBDS_BattVoltDeratingActDetn');
      SetNewConfiguration('AFTASBDS_','BattVoltDeratingAct','Detn')
      Modified_Data = CheckConfiguration(OriginalConf,'AFTASBDS_BattVoltDeratingActDetn',Modified_Data);
      CreateSignal('AFTASBDS_','BattVoltDeratingAct','Logged');
      CreateSignal('AFTASBDS_','BattVoltDeratingAct','Detected');
      CreateSignal('AFTASBDS_','','Logged');
      CreateSignal('AFTASBDS_','','Detected');
  end
catch
end

% AFTASETP_PmDeratingActDetn
try
  if (strcmp(class(evalin('base','AFTASETP_PmDeratingActDetn')),'mpt.Signal'))
      OriginalConf = SaveOriginalConf('AFTASETP_PmDeratingActDetn');
      SetNewConfiguration('AFTASETP_','PmDeratingAct','Detn')
      Modified_Data = CheckConfiguration(OriginalConf,'AFTASETP_PmDeratingActDetn',Modified_Data);
      CreateSignal('AFTASETP_','PmDeratingAct','Logged');
      CreateSignal('AFTASETP_','PmDeratingAct','Detected');
      CreateSignal('AFTASETP_','','Logged');
      CreateSignal('AFTASETP_','','Detected');
  end
catch
end

% AFTASMTP_Wndg1DeratingActDetn
try
  if (strcmp(class(evalin('base','AFTASMTP_Wndg1DeratingActDetn')),'mpt.Signal'))
      OriginalConf = SaveOriginalConf('AFTASMTP_Wndg1DeratingActDetn');
      SetNewConfiguration('AFTASMTP_','Wndg1DeratingAct','Detn')
      Modified_Data = CheckConfiguration(OriginalConf,'AFTASMTP_Wndg1DeratingActDetn',Modified_Data);
      CreateSignal('AFTASMTP_','Wndg1DeratingAct','Logged');
      CreateSignal('AFTASMTP_','Wndg1DeratingAct','Detected');
      CreateSignal('AFTASMTP_','','Logged');
      CreateSignal('AFTASMTP_','','Detected');
  end
catch
end

% AFTASOSP_MotorSpdDeratingActDetn
try
  if (strcmp(class(evalin('base','AFTASOSP_MotorSpdDeratingActDetn')),'mpt.Signal'))
      OriginalConf = SaveOriginalConf('AFTASOSP_MotorSpdDeratingActDetn');
      SetNewConfiguration('AFTASOSP_','MotorSpdDeratingAct','Detn')
      Modified_Data = CheckConfiguration(OriginalConf,'AFTASOSP_MotorSpdDeratingActDetn',Modified_Data);
      CreateSignal('AFTASOSP_','MotorSpdDeratingAct','Logged');
      CreateSignal('AFTASOSP_','MotorSpdDeratingAct','Detected');
      CreateSignal('AFTASOSP_','','Logged');
      CreateSignal('AFTASOSP_','','Detected');
  end
catch
end

% AFTCMSCS_SpeedDiffDetn
try
  if (strcmp(class(evalin('base','AFTCMSCS_SpeedDiffDetn')),'mpt.Signal'))
      OriginalConf = SaveOriginalConf('AFTCMSCS_SpeedDiffDetn');
      SetNewConfiguration('AFTCMSCS_','SpeedDiff','Detn')
      Modified_Data = CheckConfiguration(OriginalConf,'AFTCMSCS_SpeedDiffDetn',Modified_Data);
      CreateSignal('AFTCMSCS_','SpeedDiff','Logged');
      CreateSignal('AFTCMSCS_','SpeedDiff','Detected');
      CreateSignal('AFTCMSCS_','','Logged');
      CreateSignal('AFTCMSCS_','','Detected');
  end
catch
end

% AFTSLOBS_SpeedImbalanceDetn
try
  if (strcmp(class(evalin('base','AFTSLOBS_SpeedImbalanceDetn')),'mpt.Signal'))
      OriginalConf = SaveOriginalConf('AFTSLOBS_SpeedImbalanceDetn');
      SetNewConfiguration('AFTSLOBS_','SpeedImbalance','Detn')
      Modified_Data = CheckConfiguration(OriginalConf,'AFTSLOBS_SpeedImbalanceDetn',Modified_Data);
      CreateSignal('AFTSLOBS_','SpeedImbalance','Logged');
      CreateSignal('AFTSLOBS_','SpeedImbalance','Detected');
      CreateSignal('AFTSLOBS_','','Logged');
      CreateSignal('AFTSLOBS_','','Detected');
  end
catch
end

% OBSW_HW_FPGA_IGBT_HDetn
try
  if (strcmp(class(evalin('base','OBSW_HW_FPGA_IGBT_HDetn')),'mpt.Signal'))
      OriginalConf = SaveOriginalConf('OBSW_HW_FPGA_IGBT_HDetn');
      SetNewConfiguration('OBSW_HW_','FPGA_IGBT_H','Detn')
      Modified_Data = CheckConfiguration(OriginalConf,'OBSW_HW_FPGA_IGBT_HDetn',Modified_Data);
      CreateSignal('OBSW_HW_','FPGA_IGBT_H','Logged');
      CreateSignal('OBSW_HW_','FPGA_IGBT_H','Detected');
      CreateSignal('OBSW_HW_','','Logged');
      CreateSignal('OBSW_HW_','','Detected');
  end
catch
end

% OBSW_HW_FPGA_IGBT_LDetn
try
  if (strcmp(class(evalin('base','OBSW_HW_FPGA_IGBT_LDetn')),'mpt.Signal'))
      OriginalConf = SaveOriginalConf('OBSW_HW_FPGA_IGBT_LDetn');
      SetNewConfiguration('OBSW_HW_','FPGA_IGBT_L','Detn')
      Modified_Data = CheckConfiguration(OriginalConf,'OBSW_HW_FPGA_IGBT_LDetn',Modified_Data);
      CreateSignal('OBSW_HW_','FPGA_IGBT_L','Logged');
      CreateSignal('OBSW_HW_','FPGA_IGBT_L','Detected');
      CreateSignal('OBSW_HW_','','Logged');
      CreateSignal('OBSW_HW_','','Detected');
  end
catch
end

% OBSW_HW_FPGA_OverUnderCurUIDetn
try
  if (strcmp(class(evalin('base','OBSW_HW_FPGA_OverUnderCurUIDetn')),'mpt.Signal'))
      OriginalConf = SaveOriginalConf('OBSW_HW_FPGA_OverUnderCurUIDetn');
      SetNewConfiguration('OBSW_HW_','FPGA_OverUnderCurUI','Detn')
      Modified_Data = CheckConfiguration(OriginalConf,'OBSW_HW_FPGA_OverUnderCurUIDetn',Modified_Data);
      CreateSignal('OBSW_HW_','FPGA_OverUnderCurUI','Logged');
      CreateSignal('OBSW_HW_','FPGA_OverUnderCurUI','Detected');
      CreateSignal('OBSW_HW_','','Logged');
      CreateSignal('OBSW_HW_','','Detected');
  end
catch
end

% OBSW_HW_FPGA_OverUnderCurVIDetn
try
  if (strcmp(class(evalin('base','OBSW_HW_FPGA_OverUnderCurVIDetn')),'mpt.Signal'))
      OriginalConf = SaveOriginalConf('OBSW_HW_FPGA_OverUnderCurVIDetn');
      SetNewConfiguration('OBSW_HW_','FPGA_OverUnderCurVI','Detn')
      Modified_Data = CheckConfiguration(OriginalConf,'OBSW_HW_FPGA_OverUnderCurVIDetn',Modified_Data);
      CreateSignal('OBSW_HW_','FPGA_OverUnderCurVI','Logged');
      CreateSignal('OBSW_HW_','FPGA_OverUnderCurVI','Detected');
      CreateSignal('OBSW_HW_','','Logged');
      CreateSignal('OBSW_HW_','','Detected');
  end
catch
end

% OBSW_HW_FPGA_OverUnderCurWIDetn
try
  if (strcmp(class(evalin('base','OBSW_HW_FPGA_OverUnderCurWIDetn')),'mpt.Signal'))
      OriginalConf = SaveOriginalConf('OBSW_HW_FPGA_OverUnderCurWIDetn');
      SetNewConfiguration('OBSW_HW_','FPGA_OverUnderCurWI','Detn')
      Modified_Data = CheckConfiguration(OriginalConf,'OBSW_HW_FPGA_OverUnderCurWIDetn',Modified_Data);
      CreateSignal('OBSW_HW_','FPGA_OverUnderCurWI','Logged');
      CreateSignal('OBSW_HW_','FPGA_OverUnderCurWI','Detected');
      CreateSignal('OBSW_HW_','','Logged');
      CreateSignal('OBSW_HW_','','Detected');
  end
catch
end

% OBSW_HW2_FPGA_OverVoltVBatDetn
try
  if (strcmp(class(evalin('base','OBSW_HW2_FPGA_OverVoltVBatDetn')),'mpt.Signal'))
      OriginalConf = SaveOriginalConf('OBSW_HW2_FPGA_OverVoltVBatDetn');
      SetNewConfiguration('OBSW_HW2_','FPGA_OverVoltVBat','Detn')
      Modified_Data = CheckConfiguration(OriginalConf,'OBSW_HW2_FPGA_OverVoltVBatDetn',Modified_Data);
      CreateSignal('OBSW_HW2_','FPGA_OverVoltVBat','Logged');
      CreateSignal('OBSW_HW2_','FPGA_OverVoltVBat','Detected');
      CreateSignal('OBSW_HW2_','','Logged');
      CreateSignal('OBSW_HW2_','','Detected');
  end
catch
end

% OBSW_COM_BusOff_CAN1Detn
try
  if (strcmp(class(evalin('base','OBSW_COM_BusOff_CAN1Detn')),'mpt.Signal'))
      OriginalConf = SaveOriginalConf('OBSW_COM_BusOff_CAN1Detn');
      SetNewConfiguration('OBSW_COM_','BusOff_CAN1','Detn')
      Modified_Data = CheckConfiguration(OriginalConf,'OBSW_COM_BusOff_CAN1Detn',Modified_Data);
      CreateSignal('OBSW_COM_','BusOff_CAN1','Logged');
      CreateSignal('OBSW_COM_','BusOff_CAN1','Detected');
      CreateSignal('OBSW_COM_','','Logged');
      CreateSignal('OBSW_COM_','','Detected');
  end
catch
end

% OBSW_COM_TimoutRxVCUDetn
try
  if (strcmp(class(evalin('base','OBSW_COM_TimoutRxVCUDetn')),'mpt.Signal'))
      OriginalConf = SaveOriginalConf('OBSW_COM_TimoutRxVCUDetn');
      SetNewConfiguration('OBSW_COM_','TimoutRxVCU','Detn')
      Modified_Data = CheckConfiguration(OriginalConf,'OBSW_COM_TimoutRxVCUDetn',Modified_Data);
      CreateSignal('OBSW_COM_','TimoutRxVCU','Logged');
      CreateSignal('OBSW_COM_','TimoutRxVCU','Detected');
      CreateSignal('OBSW_COM_','','Logged');
      CreateSignal('OBSW_COM_','','Detected');
  end
catch
end

% OFSEVBHV_OverVoltageDetn
try
  if (strcmp(class(evalin('base','OFSEVBHV_OverVoltageDetn')),'mpt.Signal'))
      OriginalConf = SaveOriginalConf('OFSEVBHV_OverVoltageDetn');
      SetNewConfiguration('OFSEVBHV_','OverVoltage','Detn')
      Modified_Data = CheckConfiguration(OriginalConf,'OFSEVBHV_OverVoltageDetn',Modified_Data);
      CreateSignal('OFSEVBHV_','OverVoltage','Logged');
      CreateSignal('OFSEVBHV_','OverVoltage','Detected');
      CreateSignal('OFSEVBHV_','','Logged');
      CreateSignal('OFSEVBHV_','','Detected');
  end
catch
end

% OFSEVBHV_UnderVoltageDetn
try
  if (strcmp(class(evalin('base','OFSEVBHV_UnderVoltageDetn')),'mpt.Signal'))
      OriginalConf = SaveOriginalConf('OFSEVBHV_UnderVoltageDetn');
      SetNewConfiguration('OFSEVBHV_','UnderVoltage','Detn')
      Modified_Data = CheckConfiguration(OriginalConf,'OFSEVBHV_UnderVoltageDetn',Modified_Data);
      CreateSignal('OFSEVBHV_','UnderVoltage','Logged');
      CreateSignal('OFSEVBHV_','UnderVoltage','Detected');
      CreateSignal('OFSEVBHV_','','Logged');
      CreateSignal('OFSEVBHV_','','Detected');
  end
catch
end

% OFSEVBHV_VoltageVccDetn
try
  if (strcmp(class(evalin('base','OFSEVBHV_VoltageVccDetn')),'mpt.Signal'))
      OriginalConf = SaveOriginalConf('OFSEVBHV_VoltageVccDetn');
      SetNewConfiguration('OFSEVBHV_','VoltageVcc','Detn')
      Modified_Data = CheckConfiguration(OriginalConf,'OFSEVBHV_VoltageVccDetn',Modified_Data);
      CreateSignal('OFSEVBHV_','VoltageVcc','Logged');
      CreateSignal('OFSEVBHV_','VoltageVcc','Detected');
      CreateSignal('OFSEVBHV_','','Logged');
      CreateSignal('OFSEVBHV_','','Detected');
  end
catch
end

% OFSEVBHV_VoltageGndDetn
try
  if (strcmp(class(evalin('base','OFSEVBHV_VoltageGndDetn')),'mpt.Signal'))
      OriginalConf = SaveOriginalConf('OFSEVBHV_VoltageGndDetn');
      SetNewConfiguration('OFSEVBHV_','VoltageGnd','Detn')
      Modified_Data = CheckConfiguration(OriginalConf,'OFSEVBHV_VoltageGndDetn',Modified_Data);
      CreateSignal('OFSEVBHV_','VoltageGnd','Logged');
      CreateSignal('OFSEVBHV_','VoltageGnd','Detected');
      CreateSignal('OFSEVBHV_','','Logged');
      CreateSignal('OFSEVBHV_','','Detected');
  end
catch
end

% OFSEVBLV_OverVoltageDetn
try
  if (strcmp(class(evalin('base','OFSEVBLV_OverVoltageDetn')),'mpt.Signal'))
      OriginalConf = SaveOriginalConf('OFSEVBLV_OverVoltageDetn');
      SetNewConfiguration('OFSEVBLV_','OverVoltage','Detn')
      Modified_Data = CheckConfiguration(OriginalConf,'OFSEVBLV_OverVoltageDetn',Modified_Data);
      CreateSignal('OFSEVBLV_','OverVoltage','Logged');
      CreateSignal('OFSEVBLV_','OverVoltage','Detected');
      CreateSignal('OFSEVBLV_','','Logged');
      CreateSignal('OFSEVBLV_','','Detected');
  end
catch
end

% OFSEVBLV_UnderVoltageDetn
try
  if (strcmp(class(evalin('base','OFSEVBLV_UnderVoltageDetn')),'mpt.Signal'))
      OriginalConf = SaveOriginalConf('OFSEVBLV_UnderVoltageDetn');
      SetNewConfiguration('OFSEVBLV_','UnderVoltage','Detn')
      Modified_Data = CheckConfiguration(OriginalConf,'OFSEVBLV_UnderVoltageDetn',Modified_Data);
      CreateSignal('OFSEVBLV_','UnderVoltage','Logged');
      CreateSignal('OFSEVBLV_','UnderVoltage','Detected');
      CreateSignal('OFSEVBLV_','','Logged');
      CreateSignal('OFSEVBLV_','','Detected');
  end
catch
end

% OFSEVBLV_P5VRefADCFltDetn
try
  if (strcmp(class(evalin('base','OFSEVBLV_P5VRefADCFltDetn')),'mpt.Signal'))
      OriginalConf = SaveOriginalConf('OFSEVBLV_P5VRefADCFltDetn');
      SetNewConfiguration('OFSEVBLV_','P5VRefADCFlt','Detn')
      Modified_Data = CheckConfiguration(OriginalConf,'OFSEVBLV_P5VRefADCFltDetn',Modified_Data);
      CreateSignal('OFSEVBLV_','P5VRefADCFlt','Logged');
      CreateSignal('OFSEVBLV_','P5VRefADCFlt','Detected');
      CreateSignal('OFSEVBLV_','','Logged');
      CreateSignal('OFSEVBLV_','','Detected');
  end
catch
end

% OFSEVETA_IgbtTempRationalDetn
try
  if (strcmp(class(evalin('base','OFSEVETA_IgbtTempRationalDetn')),'mpt.Signal'))
      OriginalConf = SaveOriginalConf('OFSEVETA_IgbtTempRationalDetn');
      SetNewConfiguration('OFSEVETA_','IgbtTempRational','Detn')
      Modified_Data = CheckConfiguration(OriginalConf,'OFSEVETA_IgbtTempRationalDetn',Modified_Data);
      CreateSignal('OFSEVETA_','IgbtTempRational','Logged');
      CreateSignal('OFSEVETA_','IgbtTempRational','Detected');
      CreateSignal('OFSEVETA_','','Logged');
      CreateSignal('OFSEVETA_','','Detected');
  end
catch
end

% OFSEVETA_OverTempNTC1CmdBoardDetn
try
  if (strcmp(class(evalin('base','OFSEVETA_OverTempNTC1CmdBoardDetn')),'mpt.Signal'))
      OriginalConf = SaveOriginalConf('OFSEVETA_OverTempNTC1CmdBoardDetn');
      SetNewConfiguration('OFSEVETA_','OverTempNTC1CmdBoard','Detn')
      Modified_Data = CheckConfiguration(OriginalConf,'OFSEVETA_OverTempNTC1CmdBoardDetn',Modified_Data);
      CreateSignal('OFSEVETA_','OverTempNTC1CmdBoard','Logged');
      CreateSignal('OFSEVETA_','OverTempNTC1CmdBoard','Detected');
      CreateSignal('OFSEVETA_','','Logged');
      CreateSignal('OFSEVETA_','','Detected');
  end
catch
end

% OFSEVETA_OverTempDrvLeftDetn
try
  if (strcmp(class(evalin('base','OFSEVETA_OverTempDrvLeftDetn')),'mpt.Signal'))
      OriginalConf = SaveOriginalConf('OFSEVETA_OverTempDrvLeftDetn');
      SetNewConfiguration('OFSEVETA_Over','TempDrvLeft','Detn')
      Modified_Data = CheckConfiguration(OriginalConf,'OFSEVETA_OverTempDrvLeftDetn',Modified_Data);
      CreateSignal('OFSEVETA_Over','TempDrvLeft','Logged');
      CreateSignal('OFSEVETA_Over','TempDrvLeft','Detected');
      CreateSignal('OFSEVETA_Over','','Logged');
      CreateSignal('OFSEVETA_Over','','Detected');
  end
catch
end

% OFSEVETA_OverTempIgbtLeftDetn
try
  if (strcmp(class(evalin('base','OFSEVETA_OverTempIgbtLeftDetn')),'mpt.Signal'))
      OriginalConf = SaveOriginalConf('OFSEVETA_OverTempIgbtLeftDetn');
      SetNewConfiguration('OFSEVETA_Over','TempIgbtLeft','Detn')
      Modified_Data = CheckConfiguration(OriginalConf,'OFSEVETA_OverTempIgbtLeftDetn',Modified_Data);
      CreateSignal('OFSEVETA_Over','TempIgbtLeft','Logged');
      CreateSignal('OFSEVETA_Over','TempIgbtLeft','Detected');
      CreateSignal('OFSEVETA_Over','','Logged');
      CreateSignal('OFSEVETA_Over','','Detected');
  end
catch
end

% OFSMTMTA_OverTempWdgHead1Detn
try
  if (strcmp(class(evalin('base','OFSMTMTA_OverTempWdgHead1Detn')),'mpt.Signal'))
      OriginalConf = SaveOriginalConf('OFSMTMTA_OverTempWdgHead1Detn');
      SetNewConfiguration('OFSMTMTA_Over','TempWdgHead1','Detn')
      Modified_Data = CheckConfiguration(OriginalConf,'OFSMTMTA_OverTempWdgHead1Detn',Modified_Data);
      CreateSignal('OFSMTMTA_Over','TempWdgHead1','Logged');
      CreateSignal('OFSMTMTA_Over','TempWdgHead1','Detected');
      CreateSignal('OFSMTMTA_Over','','Logged');
      CreateSignal('OFSMTMTA_Over','','Detected');
  end
catch
end

% OFSEVETA_TempIgbtLeftGndDetn
try
  if (strcmp(class(evalin('base','OFSEVETA_TempIgbtLeftGndDetn')),'mpt.Signal'))
      OriginalConf = SaveOriginalConf('OFSEVETA_TempIgbtLeftGndDetn');
      SetNewConfiguration('OFSEVETA_Temp','IgbtLeftGnd','Detn')
      Modified_Data = CheckConfiguration(OriginalConf,'OFSEVETA_TempIgbtLeftGndDetn',Modified_Data);
      CreateSignal('OFSEVETA_Temp','IgbtLeftGnd','Logged');
      CreateSignal('OFSEVETA_Temp','IgbtLeftGnd','Detected');
      CreateSignal('OFSEVETA_Temp','','Logged');
      CreateSignal('OFSEVETA_Temp','','Detected');
  end
catch
end

% OFSEVETA_TempIgbtLeftVccDetn
try
  if (strcmp(class(evalin('base','OFSEVETA_TempIgbtLeftVccDetn')),'mpt.Signal'))
      OriginalConf = SaveOriginalConf('OFSEVETA_TempIgbtLeftVccDetn');
      SetNewConfiguration('OFSEVETA_Temp','IgbtLeftVcc','Detn')
      Modified_Data = CheckConfiguration(OriginalConf,'OFSEVETA_TempIgbtLeftVccDetn',Modified_Data);
      CreateSignal('OFSEVETA_Temp','IgbtLeftVcc','Logged');
      CreateSignal('OFSEVETA_Temp','IgbtLeftVcc','Detected');
      CreateSignal('OFSEVETA_Temp','','Logged');
      CreateSignal('OFSEVETA_Temp','','Detected');
  end
catch
end

% OFSMTMTA_TempWindingHead1GndDetn
try
  if (strcmp(class(evalin('base','OFSMTMTA_TempWindingHead1GndDetn')),'mpt.Signal'))
      OriginalConf = SaveOriginalConf('OFSMTMTA_TempWindingHead1GndDetn');
      SetNewConfiguration('OFSMTMTA_Temp','WindingHead1Gnd','Detn')
      Modified_Data = CheckConfiguration(OriginalConf,'OFSMTMTA_TempWindingHead1GndDetn',Modified_Data);
      CreateSignal('OFSMTMTA_Temp','WindingHead1Gnd','Logged');
      CreateSignal('OFSMTMTA_Temp','WindingHead1Gnd','Detected');
      CreateSignal('OFSMTMTA_Temp','','Logged');
      CreateSignal('OFSMTMTA_Temp','','Detected');
  end
catch
end

% OFSMTMTA_TempWindingHead1VccDetn
try
  if (strcmp(class(evalin('base','OFSMTMTA_TempWindingHead1VccDetn')),'mpt.Signal'))
      OriginalConf = SaveOriginalConf('OFSMTMTA_TempWindingHead1VccDetn');
      SetNewConfiguration('OFSMTMTA_Temp','WindingHead1Vcc','Detn')
      Modified_Data = CheckConfiguration(OriginalConf,'OFSMTMTA_TempWindingHead1VccDetn',Modified_Data);
      CreateSignal('OFSMTMTA_Temp','WindingHead1Vcc','Logged');
      CreateSignal('OFSMTMTA_Temp','WindingHead1Vcc','Detected');
      CreateSignal('OFSMTMTA_Temp','','Logged');
      CreateSignal('OFSMTMTA_Temp','','Detected');
  end
catch
end

% OFTMTLCS_CurrentSumErrorDetn
try
  if (strcmp(class(evalin('base','OFTMTLCS_CurrentSumErrorDetn')),'mpt.Signal'))
      OriginalConf = SaveOriginalConf('OFTMTLCS_CurrentSumErrorDetn');
      SetNewConfiguration('OFTMTLCS_','CurrentSumError','Detn')
      Modified_Data = CheckConfiguration(OriginalConf,'OFTMTLCS_CurrentSumErrorDetn',Modified_Data);
      CreateSignal('OFTMTLCS_','CurrentSumError','Logged');
      CreateSignal('OFTMTLCS_','CurrentSumError','Detected');
      CreateSignal('OFTMTLCS_','','Logged');
      CreateSignal('OFTMTLCS_','','Detected');
  end
catch
end

% OFTMTLCS_CurSenrPhaU_GNDDetn
try
  if (strcmp(class(evalin('base','OFTMTLCS_CurSenrPhaU_GNDDetn')),'mpt.Signal'))
      OriginalConf = SaveOriginalConf('OFTMTLCS_CurSenrPhaU_GNDDetn');
      SetNewConfiguration('OFTMTLCS_','CurSenrPhaU_GND','Detn')
      Modified_Data = CheckConfiguration(OriginalConf,'OFTMTLCS_CurSenrPhaU_GNDDetn',Modified_Data);
      CreateSignal('OFTMTLCS_','CurSenrPhaU_GND','Logged');
      CreateSignal('OFTMTLCS_','CurSenrPhaU_GND','Detected');
      CreateSignal('OFTMTLCS_','','Logged');
      CreateSignal('OFTMTLCS_','','Detected');
  end
catch
end

% OFTMTLCS_CurSenrPhaU_VCCDetn
try
  if (strcmp(class(evalin('base','OFTMTLCS_CurSenrPhaU_VCCDetn')),'mpt.Signal'))
      OriginalConf = SaveOriginalConf('OFTMTLCS_CurSenrPhaU_VCCDetn');
      SetNewConfiguration('OFTMTLCS_','CurSenrPhaU_VCC','Detn')
      Modified_Data = CheckConfiguration(OriginalConf,'OFTMTLCS_CurSenrPhaU_VCCDetn',Modified_Data);
      CreateSignal('OFTMTLCS_','CurSenrPhaU_VCC','Logged');
      CreateSignal('OFTMTLCS_','CurSenrPhaU_VCC','Detected');
      CreateSignal('OFTMTLCS_','','Logged');
      CreateSignal('OFTMTLCS_','','Detected');
  end
catch
end

% OFTMTLCS_CurSenrPhaV_GNDDetn
try
  if (strcmp(class(evalin('base','OFTMTLCS_CurSenrPhaV_GNDDetn')),'mpt.Signal'))
      OriginalConf = SaveOriginalConf('OFTMTLCS_CurSenrPhaV_GNDDetn');
      SetNewConfiguration('OFTMTLCS_','CurSenrPhaV_GND','Detn')
      Modified_Data = CheckConfiguration(OriginalConf,'OFTMTLCS_CurSenrPhaV_GNDDetn',Modified_Data);
      CreateSignal('OFTMTLCS_','CurSenrPhaV_GND','Logged');
      CreateSignal('OFTMTLCS_','CurSenrPhaV_GND','Detected');
      CreateSignal('OFTMTLCS_','','Logged');
      CreateSignal('OFTMTLCS_','','Detected');
  end
catch
end

% OFTMTLCS_CurSenrPhaV_VCCDetn
try
  if (strcmp(class(evalin('base','OFTMTLCS_CurSenrPhaV_VCCDetn')),'mpt.Signal'))
      OriginalConf = SaveOriginalConf('OFTMTLCS_CurSenrPhaV_VCCDetn');
      SetNewConfiguration('OFTMTLCS_','CurSenrPhaV_VCC','Detn')
      Modified_Data = CheckConfiguration(OriginalConf,'OFTMTLCS_CurSenrPhaV_VCCDetn',Modified_Data);
      CreateSignal('OFTMTLCS_','CurSenrPhaV_VCC','Logged');
      CreateSignal('OFTMTLCS_','CurSenrPhaV_VCC','Detected');
      CreateSignal('OFTMTLCS_','','Logged');
      CreateSignal('OFTMTLCS_','','Detected');
  end
catch
end

% OFTMTLCS_CurSenrPhaW_GNDDetn
try
  if (strcmp(class(evalin('base','OFTMTLCS_CurSenrPhaW_GNDDetn')),'mpt.Signal'))
      OriginalConf = SaveOriginalConf('OFTMTLCS_CurSenrPhaW_GNDDetn');
      SetNewConfiguration('OFTMTLCS_','CurSenrPhaW_GND','Detn')
      Modified_Data = CheckConfiguration(OriginalConf,'OFTMTLCS_CurSenrPhaW_GNDDetn',Modified_Data);
      CreateSignal('OFTMTLCS_','CurSenrPhaW_GND','Logged');
      CreateSignal('OFTMTLCS_','CurSenrPhaW_GND','Detected');
      CreateSignal('OFTMTLCS_','','Logged');
      CreateSignal('OFTMTLCS_','','Detected');
  end
catch
end

% OFTMTLCS_CurSenrPhaW_VCCDetn
try
  if (strcmp(class(evalin('base','OFTMTLCS_CurSenrPhaW_VCCDetn')),'mpt.Signal'))
      OriginalConf = SaveOriginalConf('OFTMTLCS_CurSenrPhaW_VCCDetn');
      SetNewConfiguration('OFTMTLCS_','CurSenrPhaW_VCC','Detn')
      Modified_Data = CheckConfiguration(OriginalConf,'OFTMTLCS_CurSenrPhaW_VCCDetn',Modified_Data);
      CreateSignal('OFTMTLCS_','CurSenrPhaW_VCC','Logged');
      CreateSignal('OFTMTLCS_','CurSenrPhaW_VCC','Detected');
      CreateSignal('OFTMTLCS_','','Logged');
      CreateSignal('OFTMTLCS_','','Detected');
  end
catch
end

% OFTMTLCS_ContorOverLoadDetn
try
  if (strcmp(class(evalin('base','OFTMTLCS_ContorOverLoadDetn')),'mpt.Signal'))
      OriginalConf = SaveOriginalConf('OFTMTLCS_ContorOverLoadDetn');
      SetNewConfiguration('OFTMTLCS_','ContorOverLoad','Detn')
      Modified_Data = CheckConfiguration(OriginalConf,'OFTMTLCS_ContorOverLoadDetn',Modified_Data);
      CreateSignal('OFTMTLCS_','ContorOverLoad','Logged');
      CreateSignal('OFTMTLCS_','ContorOverLoad','Detected');
      CreateSignal('OFTMTLCS_','','Logged');
      CreateSignal('OFTMTLCS_','','Detected');
  end
catch
end

% OFTMTLCS_MotorOverLoadDetn
try
  if (strcmp(class(evalin('base','OFTMTLCS_MotorOverLoadDetn')),'mpt.Signal'))
      OriginalConf = SaveOriginalConf('OFTMTLCS_MotorOverLoadDetn');
      SetNewConfiguration('OFTMTLCS_','MotorOverLoad','Detn')
      Modified_Data = CheckConfiguration(OriginalConf,'OFTMTLCS_MotorOverLoadDetn',Modified_Data);
      CreateSignal('OFTMTLCS_','MotorOverLoad','Logged');
      CreateSignal('OFTMTLCS_','MotorOverLoad','Detected');
      CreateSignal('OFTMTLCS_','','Logged');
      CreateSignal('OFTMTLCS_','','Detected');
  end
catch
end

% OFTMTLCS_RunForLongTimeDetn
try
  if (strcmp(class(evalin('base','OFTMTLCS_RunForLongTimeDetn')),'mpt.Signal'))
      OriginalConf = SaveOriginalConf('OFTMTLCS_RunForLongTimeDetn');
      SetNewConfiguration('OFTMTLCS_','RunForLongTime','Detn')
      Modified_Data = CheckConfiguration(OriginalConf,'OFTMTLCS_RunForLongTimeDetn',Modified_Data);
      CreateSignal('OFTMTLCS_','RunForLongTime','Logged');
      CreateSignal('OFTMTLCS_','RunForLongTime','Detected');
      CreateSignal('OFTMTLCS_','','Logged');
      CreateSignal('OFTMTLCS_','','Detected');
  end
catch
end

% OFTCMTCS_VoltageMarginLowDetn
try
  if (strcmp(class(evalin('base','OFTCMTCS_VoltageMarginLowDetn')),'mpt.Signal'))
      OriginalConf = SaveOriginalConf('OFTCMTCS_VoltageMarginLowDetn');
      SetNewConfiguration('OFTCMTCS_','VoltageMarginLow','Detn')
      Modified_Data = CheckConfiguration(OriginalConf,'OFTCMTCS_VoltageMarginLowDetn',Modified_Data);
      CreateSignal('OFTCMTCS_','VoltageMarginLow','Logged');
      CreateSignal('OFTCMTCS_','VoltageMarginLow','Detected');
      CreateSignal('OFTCMTCS_','','Logged');
      CreateSignal('OFTCMTCS_','','Detected');
  end
catch
end

% OFTASBDS_BattVoltDeratingActDetn
try
  if (strcmp(class(evalin('base','OFTASBDS_BattVoltDeratingActDetn')),'mpt.Signal'))
      OriginalConf = SaveOriginalConf('OFTASBDS_BattVoltDeratingActDetn');
      SetNewConfiguration('OFTASBDS_','BattVoltDeratingAct','Detn')
      Modified_Data = CheckConfiguration(OriginalConf,'OFTASBDS_BattVoltDeratingActDetn',Modified_Data);
      CreateSignal('OFTASBDS_','BattVoltDeratingAct','Logged');
      CreateSignal('OFTASBDS_','BattVoltDeratingAct','Detected');
      CreateSignal('OFTASBDS_','','Logged');
      CreateSignal('OFTASBDS_','','Detected');
  end
catch
end

% OFTASETP_PmDeratingActDetn
try
  if (strcmp(class(evalin('base','OFTASETP_PmDeratingActDetn')),'mpt.Signal'))
      OriginalConf = SaveOriginalConf('OFTASETP_PmDeratingActDetn');
      SetNewConfiguration('OFTASETP_','PmDeratingAct','Detn')
      Modified_Data = CheckConfiguration(OriginalConf,'OFTASETP_PmDeratingActDetn',Modified_Data);
      CreateSignal('OFTASETP_','PmDeratingAct','Logged');
      CreateSignal('OFTASETP_','PmDeratingAct','Detected');
      CreateSignal('OFTASETP_','','Logged');
      CreateSignal('OFTASETP_','','Detected');
  end
catch
end

% OFTASMTP_Wndg1DeratingActDetn
try
  if (strcmp(class(evalin('base','OFTASMTP_Wndg1DeratingActDetn')),'mpt.Signal'))
      OriginalConf = SaveOriginalConf('OFTASMTP_Wndg1DeratingActDetn');
      SetNewConfiguration('OFTASMTP_','Wndg1DeratingAct','Detn')
      Modified_Data = CheckConfiguration(OriginalConf,'OFTASMTP_Wndg1DeratingActDetn',Modified_Data);
      CreateSignal('OFTASMTP_','Wndg1DeratingAct','Logged');
      CreateSignal('OFTASMTP_','Wndg1DeratingAct','Detected');
      CreateSignal('OFTASMTP_','','Logged');
      CreateSignal('OFTASMTP_','','Detected');
  end
catch
end

% OFTASOSP_MotorSpdDeratingActDetn
try
  if (strcmp(class(evalin('base','OFTASOSP_MotorSpdDeratingActDetn')),'mpt.Signal'))
      OriginalConf = SaveOriginalConf('OFTASOSP_MotorSpdDeratingActDetn');
      SetNewConfiguration('OFTASOSP_','MotorSpdDeratingAct','Detn')
      Modified_Data = CheckConfiguration(OriginalConf,'OFTASOSP_MotorSpdDeratingActDetn',Modified_Data);
      CreateSignal('OFTASOSP_','MotorSpdDeratingAct','Logged');
      CreateSignal('OFTASOSP_','MotorSpdDeratingAct','Detected');
      CreateSignal('OFTASOSP_','','Logged');
      CreateSignal('OFTASOSP_','','Detected');
  end
catch
end

% OFTCMSCS_SpeedDiffDetn
try
  if (strcmp(class(evalin('base','OFTCMSCS_SpeedDiffDetn')),'mpt.Signal'))
      OriginalConf = SaveOriginalConf('OFTCMSCS_SpeedDiffDetn');
      SetNewConfiguration('OFTCMSCS_','SpeedDiff','Detn')
      Modified_Data = CheckConfiguration(OriginalConf,'OFTCMSCS_SpeedDiffDetn',Modified_Data);
      CreateSignal('OFTCMSCS_','SpeedDiff','Logged');
      CreateSignal('OFTCMSCS_','SpeedDiff','Detected');
      CreateSignal('OFTCMSCS_','','Logged');
      CreateSignal('OFTCMSCS_','','Detected');
  end
catch
end

% OFTSLOBS_SpeedImbalanceDetn
try
  if (strcmp(class(evalin('base','OFTSLOBS_SpeedImbalanceDetn')),'mpt.Signal'))
      OriginalConf = SaveOriginalConf('OFTSLOBS_SpeedImbalanceDetn');
      SetNewConfiguration('OFTSLOBS_','SpeedImbalance','Detn')
      Modified_Data = CheckConfiguration(OriginalConf,'OFTSLOBS_SpeedImbalanceDetn',Modified_Data);
      CreateSignal('OFTSLOBS_','SpeedImbalance','Logged');
      CreateSignal('OFTSLOBS_','SpeedImbalance','Detected');
      CreateSignal('OFTSLOBS_','','Logged');
      CreateSignal('OFTSLOBS_','','Detected');
  end
catch
end

% RCEVETA_BatNegCopShortDetn
try
  if (strcmp(class(evalin('base','RCEVETA_BatNegCopShortDetn')),'mpt.Signal'))
      OriginalConf = SaveOriginalConf('RCEVETA_BatNegCopShortDetn');
      SetNewConfiguration('RCEVETA_','BatNegCopShort','Detn')
      Modified_Data = CheckConfiguration(OriginalConf,'RCEVETA_BatNegCopShortDetn',Modified_Data);
      CreateSignal('RCEVETA_','BatNegCopShort','Logged');
      CreateSignal('RCEVETA_','BatNegCopShort','Detected');
      CreateSignal('RCEVETA_','','Logged');
      CreateSignal('RCEVETA_','','Detected');
  end
catch
end

% RCEVETA_BatPosCopShortDetn
try
  if (strcmp(class(evalin('base','RCEVETA_BatPosCopShortDetn')),'mpt.Signal'))
      OriginalConf = SaveOriginalConf('RCEVETA_BatPosCopShortDetn');
      SetNewConfiguration('RCEVETA_','BatPosCopShort','Detn')
      Modified_Data = CheckConfiguration(OriginalConf,'RCEVETA_BatPosCopShortDetn',Modified_Data);
      CreateSignal('RCEVETA_','BatPosCopShort','Logged');
      CreateSignal('RCEVETA_','BatPosCopShort','Detected');
      CreateSignal('RCEVETA_','','Logged');
      CreateSignal('RCEVETA_','','Detected');
  end
catch
end

% RCEVETA_MainPosCopShortDetn
try
  if (strcmp(class(evalin('base','RCEVETA_MainPosCopShortDetn')),'mpt.Signal'))
      OriginalConf = SaveOriginalConf('RCEVETA_MainPosCopShortDetn');
      SetNewConfiguration('RCEVETA_','MainPosCopShort','Detn')
      Modified_Data = CheckConfiguration(OriginalConf,'RCEVETA_MainPosCopShortDetn',Modified_Data);
      CreateSignal('RCEVETA_','MainPosCopShort','Logged');
      CreateSignal('RCEVETA_','MainPosCopShort','Detected');
      CreateSignal('RCEVETA_','','Logged');
      CreateSignal('RCEVETA_','','Detected');
  end
catch
end

% RCEVETA_ReserveCopShortDetn
try
  if (strcmp(class(evalin('base','RCEVETA_ReserveCopShortDetn')),'mpt.Signal'))
      OriginalConf = SaveOriginalConf('RCEVETA_ReserveCopShortDetn');
      SetNewConfiguration('RCEVETA_','ReserveCopShort','Detn')
      Modified_Data = CheckConfiguration(OriginalConf,'RCEVETA_ReserveCopShortDetn',Modified_Data);
      CreateSignal('RCEVETA_','ReserveCopShort','Logged');
      CreateSignal('RCEVETA_','ReserveCopShort','Detected');
      CreateSignal('RCEVETA_','','Logged');
      CreateSignal('RCEVETA_','','Detected');
  end
catch
end

% RCEVETA_SmlLoad1ShortDetn
try
  if (strcmp(class(evalin('base','RCEVETA_SmlLoad1ShortDetn')),'mpt.Signal'))
      OriginalConf = SaveOriginalConf('RCEVETA_SmlLoad1ShortDetn');
      SetNewConfiguration('RCEVETA_','SmlLoad1Short','Detn')
      Modified_Data = CheckConfiguration(OriginalConf,'RCEVETA_SmlLoad1ShortDetn',Modified_Data);
      CreateSignal('RCEVETA_','SmlLoad1Short','Logged');
      CreateSignal('RCEVETA_','SmlLoad1Short','Detected');
      CreateSignal('RCEVETA_','','Logged');
      CreateSignal('RCEVETA_','','Detected');
  end
catch
end

% RCEVETA_SmlLoad2ShortDetn
try
  if (strcmp(class(evalin('base','RCEVETA_SmlLoad2ShortDetn')),'mpt.Signal'))
      OriginalConf = SaveOriginalConf('RCEVETA_SmlLoad2ShortDetn');
      SetNewConfiguration('RCEVETA_','SmlLoad2Short','Detn')
      Modified_Data = CheckConfiguration(OriginalConf,'RCEVETA_SmlLoad2ShortDetn',Modified_Data);
      CreateSignal('RCEVETA_','SmlLoad2Short','Logged');
      CreateSignal('RCEVETA_','SmlLoad2Short','Detected');
      CreateSignal('RCEVETA_','','Logged');
      CreateSignal('RCEVETA_','','Detected');
  end
catch
end

% RCEVETA_SmlLoad3ShortDetn
try
  if (strcmp(class(evalin('base','RCEVETA_SmlLoad3ShortDetn')),'mpt.Signal'))
      OriginalConf = SaveOriginalConf('RCEVETA_SmlLoad3ShortDetn');
      SetNewConfiguration('RCEVETA_','SmlLoad3Short','Detn')
      Modified_Data = CheckConfiguration(OriginalConf,'RCEVETA_SmlLoad3ShortDetn',Modified_Data);
      CreateSignal('RCEVETA_','SmlLoad3Short','Logged');
      CreateSignal('RCEVETA_','SmlLoad3Short','Detected');
      CreateSignal('RCEVETA_','','Logged');
      CreateSignal('RCEVETA_','','Detected');
  end
catch
end

% RCEVETA_SmlLoad4ShortDetn
try
  if (strcmp(class(evalin('base','RCEVETA_SmlLoad4ShortDetn')),'mpt.Signal'))
      OriginalConf = SaveOriginalConf('RCEVETA_SmlLoad4ShortDetn');
      SetNewConfiguration('RCEVETA_','SmlLoad4Short','Detn')
      Modified_Data = CheckConfiguration(OriginalConf,'RCEVETA_SmlLoad4ShortDetn',Modified_Data);
      CreateSignal('RCEVETA_','SmlLoad4Short','Logged');
      CreateSignal('RCEVETA_','SmlLoad4Short','Detected');
      CreateSignal('RCEVETA_','','Logged');
      CreateSignal('RCEVETA_','','Detected');
  end
catch
end

% RCEVETA_SmlLoad5ShortDetn
try
  if (strcmp(class(evalin('base','RCEVETA_SmlLoad5ShortDetn')),'mpt.Signal'))
      OriginalConf = SaveOriginalConf('RCEVETA_SmlLoad5ShortDetn');
      SetNewConfiguration('RCEVETA_','SmlLoad5Short','Detn')
      Modified_Data = CheckConfiguration(OriginalConf,'RCEVETA_SmlLoad5ShortDetn',Modified_Data);
      CreateSignal('RCEVETA_','SmlLoad5Short','Logged');
      CreateSignal('RCEVETA_','SmlLoad5Short','Detected');
      CreateSignal('RCEVETA_','','Logged');
      CreateSignal('RCEVETA_','','Detected');
  end
catch
end

% RCEVETA_SmlLoad6ShortDetn
try
  if (strcmp(class(evalin('base','RCEVETA_SmlLoad6ShortDetn')),'mpt.Signal'))
      OriginalConf = SaveOriginalConf('RCEVETA_SmlLoad6ShortDetn');
      SetNewConfiguration('RCEVETA_','SmlLoad6Short','Detn')
      Modified_Data = CheckConfiguration(OriginalConf,'RCEVETA_SmlLoad6ShortDetn',Modified_Data);
      CreateSignal('RCEVETA_','SmlLoad6Short','Logged');
      CreateSignal('RCEVETA_','SmlLoad6Short','Detected');
      CreateSignal('RCEVETA_','','Logged');
      CreateSignal('RCEVETA_','','Detected');
  end
catch
end

% RCEVETA_OverTempBatNegCopDetn
try
  if (strcmp(class(evalin('base','RCEVETA_OverTempBatNegCopDetn')),'mpt.Signal'))
      OriginalConf = SaveOriginalConf('RCEVETA_OverTempBatNegCopDetn');
      SetNewConfiguration('RCEVETA_OverTemp','BatNegCop','Detn')
      Modified_Data = CheckConfiguration(OriginalConf,'RCEVETA_OverTempBatNegCopDetn',Modified_Data);
      CreateSignal('RCEVETA_OverTemp','BatNegCop','Logged');
      CreateSignal('RCEVETA_OverTemp','BatNegCop','Detected');
      CreateSignal('RCEVETA_OverTemp','','Logged');
      CreateSignal('RCEVETA_OverTemp','','Detected');
  end
catch
end

% RCEVETA_OverTempBatPosCopDetn
try
  if (strcmp(class(evalin('base','RCEVETA_OverTempBatPosCopDetn')),'mpt.Signal'))
      OriginalConf = SaveOriginalConf('RCEVETA_OverTempBatPosCopDetn');
      SetNewConfiguration('RCEVETA_OverTemp','BatPosCop','Detn')
      Modified_Data = CheckConfiguration(OriginalConf,'RCEVETA_OverTempBatPosCopDetn',Modified_Data);
      CreateSignal('RCEVETA_OverTemp','BatPosCop','Logged');
      CreateSignal('RCEVETA_OverTemp','BatPosCop','Detected');
      CreateSignal('RCEVETA_OverTemp','','Logged');
      CreateSignal('RCEVETA_OverTemp','','Detected');
  end
catch
end

% RCEVETA_OverTempMainPosCopDetn
try
  if (strcmp(class(evalin('base','RCEVETA_OverTempMainPosCopDetn')),'mpt.Signal'))
      OriginalConf = SaveOriginalConf('RCEVETA_OverTempMainPosCopDetn');
      SetNewConfiguration('RCEVETA_OverTemp','MainPosCop','Detn')
      Modified_Data = CheckConfiguration(OriginalConf,'RCEVETA_OverTempMainPosCopDetn',Modified_Data);
      CreateSignal('RCEVETA_OverTemp','MainPosCop','Logged');
      CreateSignal('RCEVETA_OverTemp','MainPosCop','Detected');
      CreateSignal('RCEVETA_OverTemp','','Logged');
      CreateSignal('RCEVETA_OverTemp','','Detected');
  end
catch
end

% RCEVETA_OverTempReserveCopDetn
try
  if (strcmp(class(evalin('base','RCEVETA_OverTempReserveCopDetn')),'mpt.Signal'))
      OriginalConf = SaveOriginalConf('RCEVETA_OverTempReserveCopDetn');
      SetNewConfiguration('RCEVETA_OverTemp','ReserveCop','Detn')
      Modified_Data = CheckConfiguration(OriginalConf,'RCEVETA_OverTempReserveCopDetn',Modified_Data);
      CreateSignal('RCEVETA_OverTemp','ReserveCop','Logged');
      CreateSignal('RCEVETA_OverTemp','ReserveCop','Detected');
      CreateSignal('RCEVETA_OverTemp','','Logged');
      CreateSignal('RCEVETA_OverTemp','','Detected');
  end
catch
end

% RCEVETA_OverTempSmlLoad1Detn
try
  if (strcmp(class(evalin('base','RCEVETA_OverTempSmlLoad1Detn')),'mpt.Signal'))
      OriginalConf = SaveOriginalConf('RCEVETA_OverTempSmlLoad1Detn');
      SetNewConfiguration('RCEVETA_OverTemp','SmlLoad1','Detn')
      Modified_Data = CheckConfiguration(OriginalConf,'RCEVETA_OverTempSmlLoad1Detn',Modified_Data);
      CreateSignal('RCEVETA_OverTemp','SmlLoad1','Logged');
      CreateSignal('RCEVETA_OverTemp','SmlLoad1','Detected');
      CreateSignal('RCEVETA_OverTemp','','Logged');
      CreateSignal('RCEVETA_OverTemp','','Detected');
  end
catch
end

% RCEVETA_OverTempSmlLoad2Detn
try
  if (strcmp(class(evalin('base','RCEVETA_OverTempSmlLoad2Detn')),'mpt.Signal'))
      OriginalConf = SaveOriginalConf('RCEVETA_OverTempSmlLoad2Detn');
      SetNewConfiguration('RCEVETA_OverTemp','SmlLoad2','Detn')
      Modified_Data = CheckConfiguration(OriginalConf,'RCEVETA_OverTempSmlLoad2Detn',Modified_Data);
      CreateSignal('RCEVETA_OverTemp','SmlLoad2','Logged');
      CreateSignal('RCEVETA_OverTemp','SmlLoad2','Detected');
      CreateSignal('RCEVETA_OverTemp','','Logged');
      CreateSignal('RCEVETA_OverTemp','','Detected');
  end
catch
end

% RCEVETA_OverTempSmlLoad3Detn
try
  if (strcmp(class(evalin('base','RCEVETA_OverTempSmlLoad3Detn')),'mpt.Signal'))
      OriginalConf = SaveOriginalConf('RCEVETA_OverTempSmlLoad3Detn');
      SetNewConfiguration('RCEVETA_OverTemp','SmlLoad3','Detn')
      Modified_Data = CheckConfiguration(OriginalConf,'RCEVETA_OverTempSmlLoad3Detn',Modified_Data);
      CreateSignal('RCEVETA_OverTemp','SmlLoad3','Logged');
      CreateSignal('RCEVETA_OverTemp','SmlLoad3','Detected');
      CreateSignal('RCEVETA_OverTemp','','Logged');
      CreateSignal('RCEVETA_OverTemp','','Detected');
  end
catch
end

% RCEVETA_OverTempSmlLoad4Detn
try
  if (strcmp(class(evalin('base','RCEVETA_OverTempSmlLoad4Detn')),'mpt.Signal'))
      OriginalConf = SaveOriginalConf('RCEVETA_OverTempSmlLoad4Detn');
      SetNewConfiguration('RCEVETA_OverTemp','SmlLoad4','Detn')
      Modified_Data = CheckConfiguration(OriginalConf,'RCEVETA_OverTempSmlLoad4Detn',Modified_Data);
      CreateSignal('RCEVETA_OverTemp','SmlLoad4','Logged');
      CreateSignal('RCEVETA_OverTemp','SmlLoad4','Detected');
      CreateSignal('RCEVETA_OverTemp','','Logged');
      CreateSignal('RCEVETA_OverTemp','','Detected');
  end
catch
end

% RCEVETA_OverTempSmlLoad5Detn
try
  if (strcmp(class(evalin('base','RCEVETA_OverTempSmlLoad5Detn')),'mpt.Signal'))
      OriginalConf = SaveOriginalConf('RCEVETA_OverTempSmlLoad5Detn');
      SetNewConfiguration('RCEVETA_OverTemp','SmlLoad5','Detn')
      Modified_Data = CheckConfiguration(OriginalConf,'RCEVETA_OverTempSmlLoad5Detn',Modified_Data);
      CreateSignal('RCEVETA_OverTemp','SmlLoad5','Logged');
      CreateSignal('RCEVETA_OverTemp','SmlLoad5','Detected');
      CreateSignal('RCEVETA_OverTemp','','Logged');
      CreateSignal('RCEVETA_OverTemp','','Detected');
  end
catch
end

% RCEVETA_OverTempSmlLoad6Detn
try
  if (strcmp(class(evalin('base','RCEVETA_OverTempSmlLoad6Detn')),'mpt.Signal'))
      OriginalConf = SaveOriginalConf('RCEVETA_OverTempSmlLoad6Detn');
      SetNewConfiguration('RCEVETA_OverTemp','SmlLoad6','Detn')
      Modified_Data = CheckConfiguration(OriginalConf,'RCEVETA_OverTempSmlLoad6Detn',Modified_Data);
      CreateSignal('RCEVETA_OverTemp','SmlLoad6','Logged');
      CreateSignal('RCEVETA_OverTemp','SmlLoad6','Detected');
      CreateSignal('RCEVETA_OverTemp','','Logged');
      CreateSignal('RCEVETA_OverTemp','','Detected');
  end
catch
end

% RCEVLCS_OverCurSmlLoad1Detn
try
  if (strcmp(class(evalin('base','RCEVLCS_OverCurSmlLoad1Detn')),'mpt.Signal'))
      OriginalConf = SaveOriginalConf('RCEVLCS_OverCurSmlLoad1Detn');
      SetNewConfiguration('RCEVLCS_','OverCurSmlLoad1','Detn')
      Modified_Data = CheckConfiguration(OriginalConf,'RCEVLCS_OverCurSmlLoad1Detn',Modified_Data);
      CreateSignal('RCEVLCS_','OverCurSmlLoad1','Logged');
      CreateSignal('RCEVLCS_','OverCurSmlLoad1','Detected');
      CreateSignal('RCEVLCS_','','Logged');
      CreateSignal('RCEVLCS_','','Detected');
  end
catch
end

% RCEVLCS_OverCurSmlLoad2Detn
try
  if (strcmp(class(evalin('base','RCEVLCS_OverCurSmlLoad2Detn')),'mpt.Signal'))
      OriginalConf = SaveOriginalConf('RCEVLCS_OverCurSmlLoad2Detn');
      SetNewConfiguration('RCEVLCS_','OverCurSmlLoad2','Detn')
      Modified_Data = CheckConfiguration(OriginalConf,'RCEVLCS_OverCurSmlLoad2Detn',Modified_Data);
      CreateSignal('RCEVLCS_','OverCurSmlLoad2','Logged');
      CreateSignal('RCEVLCS_','OverCurSmlLoad2','Detected');
      CreateSignal('RCEVLCS_','','Logged');
      CreateSignal('RCEVLCS_','','Detected');
  end
catch
end

% RCEVLCS_OverCurSmlLoad3Detn
try
  if (strcmp(class(evalin('base','RCEVLCS_OverCurSmlLoad3Detn')),'mpt.Signal'))
      OriginalConf = SaveOriginalConf('RCEVLCS_OverCurSmlLoad3Detn');
      SetNewConfiguration('RCEVLCS_','OverCurSmlLoad3','Detn')
      Modified_Data = CheckConfiguration(OriginalConf,'RCEVLCS_OverCurSmlLoad3Detn',Modified_Data);
      CreateSignal('RCEVLCS_','OverCurSmlLoad3','Logged');
      CreateSignal('RCEVLCS_','OverCurSmlLoad3','Detected');
      CreateSignal('RCEVLCS_','','Logged');
      CreateSignal('RCEVLCS_','','Detected');
  end
catch
end

% RCEVLCS_OverCurSmlLoad4Detn
try
  if (strcmp(class(evalin('base','RCEVLCS_OverCurSmlLoad4Detn')),'mpt.Signal'))
      OriginalConf = SaveOriginalConf('RCEVLCS_OverCurSmlLoad4Detn');
      SetNewConfiguration('RCEVLCS_','OverCurSmlLoad4','Detn')
      Modified_Data = CheckConfiguration(OriginalConf,'RCEVLCS_OverCurSmlLoad4Detn',Modified_Data);
      CreateSignal('RCEVLCS_','OverCurSmlLoad4','Logged');
      CreateSignal('RCEVLCS_','OverCurSmlLoad4','Detected');
      CreateSignal('RCEVLCS_','','Logged');
      CreateSignal('RCEVLCS_','','Detected');
  end
catch
end

% RCEVLCS_OverCurSmlLoad5Detn
try
  if (strcmp(class(evalin('base','RCEVLCS_OverCurSmlLoad5Detn')),'mpt.Signal'))
      OriginalConf = SaveOriginalConf('RCEVLCS_OverCurSmlLoad5Detn');
      SetNewConfiguration('RCEVLCS_','OverCurSmlLoad5','Detn')
      Modified_Data = CheckConfiguration(OriginalConf,'RCEVLCS_OverCurSmlLoad5Detn',Modified_Data);
      CreateSignal('RCEVLCS_','OverCurSmlLoad5','Logged');
      CreateSignal('RCEVLCS_','OverCurSmlLoad5','Detected');
      CreateSignal('RCEVLCS_','','Logged');
      CreateSignal('RCEVLCS_','','Detected');
  end
catch
end

% RCEVLCS_OverCurSmlLoad6Detn
try
  if (strcmp(class(evalin('base','RCEVLCS_OverCurSmlLoad6Detn')),'mpt.Signal'))
      OriginalConf = SaveOriginalConf('RCEVLCS_OverCurSmlLoad6Detn');
      SetNewConfiguration('RCEVLCS_','OverCurSmlLoad6','Detn')
      Modified_Data = CheckConfiguration(OriginalConf,'RCEVLCS_OverCurSmlLoad6Detn',Modified_Data);
      CreateSignal('RCEVLCS_','OverCurSmlLoad6','Logged');
      CreateSignal('RCEVLCS_','OverCurSmlLoad6','Detected');
      CreateSignal('RCEVLCS_','','Logged');
      CreateSignal('RCEVLCS_','','Detected');
  end
catch
end

% RCEVLCS_SmlLoad1CurShortDetn
try
  if (strcmp(class(evalin('base','RCEVLCS_SmlLoad1CurShortDetn')),'mpt.Signal'))
      OriginalConf = SaveOriginalConf('RCEVLCS_SmlLoad1CurShortDetn');
      SetNewConfiguration('RCEVLCS_','SmlLoad1CurShort','Detn')
      Modified_Data = CheckConfiguration(OriginalConf,'RCEVLCS_SmlLoad1CurShortDetn',Modified_Data);
      CreateSignal('RCEVLCS_','SmlLoad1CurShort','Logged');
      CreateSignal('RCEVLCS_','SmlLoad1CurShort','Detected');
      CreateSignal('RCEVLCS_','','Logged');
      CreateSignal('RCEVLCS_','','Detected');
  end
catch
end

% RCEVLCS_SmlLoad2CurShortDetn
try
  if (strcmp(class(evalin('base','RCEVLCS_SmlLoad2CurShortDetn')),'mpt.Signal'))
      OriginalConf = SaveOriginalConf('RCEVLCS_SmlLoad2CurShortDetn');
      SetNewConfiguration('RCEVLCS_','SmlLoad2CurShort','Detn')
      Modified_Data = CheckConfiguration(OriginalConf,'RCEVLCS_SmlLoad2CurShortDetn',Modified_Data);
      CreateSignal('RCEVLCS_','SmlLoad2CurShort','Logged');
      CreateSignal('RCEVLCS_','SmlLoad2CurShort','Detected');
      CreateSignal('RCEVLCS_','','Logged');
      CreateSignal('RCEVLCS_','','Detected');
  end
catch
end

% RCEVLCS_SmlLoad3CurShortDetn
try
  if (strcmp(class(evalin('base','RCEVLCS_SmlLoad3CurShortDetn')),'mpt.Signal'))
      OriginalConf = SaveOriginalConf('RCEVLCS_SmlLoad3CurShortDetn');
      SetNewConfiguration('RCEVLCS_','SmlLoad3CurShort','Detn')
      Modified_Data = CheckConfiguration(OriginalConf,'RCEVLCS_SmlLoad3CurShortDetn',Modified_Data);
      CreateSignal('RCEVLCS_','SmlLoad3CurShort','Logged');
      CreateSignal('RCEVLCS_','SmlLoad3CurShort','Detected');
      CreateSignal('RCEVLCS_','','Logged');
      CreateSignal('RCEVLCS_','','Detected');
  end
catch
end

% RCEVLCS_SmlLoad4CurShortDetn
try
  if (strcmp(class(evalin('base','RCEVLCS_SmlLoad4CurShortDetn')),'mpt.Signal'))
      OriginalConf = SaveOriginalConf('RCEVLCS_SmlLoad4CurShortDetn');
      SetNewConfiguration('RCEVLCS_','SmlLoad4CurShort','Detn')
      Modified_Data = CheckConfiguration(OriginalConf,'RCEVLCS_SmlLoad4CurShortDetn',Modified_Data);
      CreateSignal('RCEVLCS_','SmlLoad4CurShort','Logged');
      CreateSignal('RCEVLCS_','SmlLoad4CurShort','Detected');
      CreateSignal('RCEVLCS_','','Logged');
      CreateSignal('RCEVLCS_','','Detected');
  end
catch
end

% RCEVLCS_SmlLoad5CurShortDetn
try
  if (strcmp(class(evalin('base','RCEVLCS_SmlLoad5CurShortDetn')),'mpt.Signal'))
      OriginalConf = SaveOriginalConf('RCEVLCS_SmlLoad5CurShortDetn');
      SetNewConfiguration('RCEVLCS_','SmlLoad5CurShort','Detn')
      Modified_Data = CheckConfiguration(OriginalConf,'RCEVLCS_SmlLoad5CurShortDetn',Modified_Data);
      CreateSignal('RCEVLCS_','SmlLoad5CurShort','Logged');
      CreateSignal('RCEVLCS_','SmlLoad5CurShort','Detected');
      CreateSignal('RCEVLCS_','','Logged');
      CreateSignal('RCEVLCS_','','Detected');
  end
catch
end

% RCEVLCS_SmlLoad6CurShortDetn
try
  if (strcmp(class(evalin('base','RCEVLCS_SmlLoad6CurShortDetn')),'mpt.Signal'))
      OriginalConf = SaveOriginalConf('RCEVLCS_SmlLoad6CurShortDetn');
      SetNewConfiguration('RCEVLCS_','SmlLoad6CurShort','Detn')
      Modified_Data = CheckConfiguration(OriginalConf,'RCEVLCS_SmlLoad6CurShortDetn',Modified_Data);
      CreateSignal('RCEVLCS_','SmlLoad6CurShort','Logged');
      CreateSignal('RCEVLCS_','SmlLoad6CurShort','Detected');
      CreateSignal('RCEVLCS_','','Logged');
      CreateSignal('RCEVLCS_','','Detected');
  end
catch
end

% RCSMACS_BatHeatDrvErrDetn
try
  if (strcmp(class(evalin('base','RCSMACS_BatHeatDrvErrDetn')),'mpt.Signal'))
      OriginalConf = SaveOriginalConf('RCSMACS_BatHeatDrvErrDetn');
      SetNewConfiguration('RCSMACS_BatHeat','DrvErr','Detn')
      Modified_Data = CheckConfiguration(OriginalConf,'RCSMACS_BatHeatDrvErrDetn',Modified_Data);
      CreateSignal('RCSMACS_BatHeat','DrvErr','Logged');
      CreateSignal('RCSMACS_BatHeat','DrvErr','Detected');
      CreateSignal('RCSMACS_BatHeat','','Logged');
      CreateSignal('RCSMACS_BatHeat','','Detected');
  end
catch
end

% RCSMACS_BatHeatPreFailedDetn
try
  if (strcmp(class(evalin('base','RCSMACS_BatHeatPreFailedDetn')),'mpt.Signal'))
      OriginalConf = SaveOriginalConf('RCSMACS_BatHeatPreFailedDetn');
      SetNewConfiguration('RCSMACS_BatHeat','PreFailed','Detn')
      Modified_Data = CheckConfiguration(OriginalConf,'RCSMACS_BatHeatPreFailedDetn',Modified_Data);
      CreateSignal('RCSMACS_BatHeat','PreFailed','Logged');
      CreateSignal('RCSMACS_BatHeat','PreFailed','Detected');
      CreateSignal('RCSMACS_BatHeat','','Logged');
      CreateSignal('RCSMACS_BatHeat','','Detected');
  end
catch
end

% RCSMACS_BatHeatPreOverTimeDetn
try
  if (strcmp(class(evalin('base','RCSMACS_BatHeatPreOverTimeDetn')),'mpt.Signal'))
      OriginalConf = SaveOriginalConf('RCSMACS_BatHeatPreOverTimeDetn');
      SetNewConfiguration('RCSMACS_BatHeat','PreOverTime','Detn')
      Modified_Data = CheckConfiguration(OriginalConf,'RCSMACS_BatHeatPreOverTimeDetn',Modified_Data);
      CreateSignal('RCSMACS_BatHeat','PreOverTime','Logged');
      CreateSignal('RCSMACS_BatHeat','PreOverTime','Detected');
      CreateSignal('RCSMACS_BatHeat','','Logged');
      CreateSignal('RCSMACS_BatHeat','','Detected');
  end
catch
end

% RCSMACS_BatHeatWeledDetn
try
  if (strcmp(class(evalin('base','RCSMACS_BatHeatWeledDetn')),'mpt.Signal'))
      OriginalConf = SaveOriginalConf('RCSMACS_BatHeatWeledDetn');
      SetNewConfiguration('RCSMACS_BatHeat','Weled','Detn')
      Modified_Data = CheckConfiguration(OriginalConf,'RCSMACS_BatHeatWeledDetn',Modified_Data);
      CreateSignal('RCSMACS_BatHeat','Weled','Logged');
      CreateSignal('RCSMACS_BatHeat','Weled','Detected');
      CreateSignal('RCSMACS_BatHeat','','Logged');
      CreateSignal('RCSMACS_BatHeat','','Detected');
  end
catch
end

% RCSMACS_EACDrvErrDetn
try
  if (strcmp(class(evalin('base','RCSMACS_EACDrvErrDetn')),'mpt.Signal'))
      OriginalConf = SaveOriginalConf('RCSMACS_EACDrvErrDetn');
      SetNewConfiguration('RCSMACS_EAC','DrvErr','Detn')
      Modified_Data = CheckConfiguration(OriginalConf,'RCSMACS_EACDrvErrDetn',Modified_Data);
      CreateSignal('RCSMACS_EAC','DrvErr','Logged');
      CreateSignal('RCSMACS_EAC','DrvErr','Detected');
      CreateSignal('RCSMACS_EAC','','Logged');
      CreateSignal('RCSMACS_EAC','','Detected');
  end
catch
end

% RCSMACS_EACPreFailedDetn
try
  if (strcmp(class(evalin('base','RCSMACS_EACPreFailedDetn')),'mpt.Signal'))
      OriginalConf = SaveOriginalConf('RCSMACS_EACPreFailedDetn');
      SetNewConfiguration('RCSMACS_EAC','PreFailed','Detn')
      Modified_Data = CheckConfiguration(OriginalConf,'RCSMACS_EACPreFailedDetn',Modified_Data);
      CreateSignal('RCSMACS_EAC','PreFailed','Logged');
      CreateSignal('RCSMACS_EAC','PreFailed','Detected');
      CreateSignal('RCSMACS_EAC','','Logged');
      CreateSignal('RCSMACS_EAC','','Detected');
  end
catch
end

% RCSMACS_EACPreOverTimeDetn
try
  if (strcmp(class(evalin('base','RCSMACS_EACPreOverTimeDetn')),'mpt.Signal'))
      OriginalConf = SaveOriginalConf('RCSMACS_EACPreOverTimeDetn');
      SetNewConfiguration('RCSMACS_EAC','PreOverTime','Detn')
      Modified_Data = CheckConfiguration(OriginalConf,'RCSMACS_EACPreOverTimeDetn',Modified_Data);
      CreateSignal('RCSMACS_EAC','PreOverTime','Logged');
      CreateSignal('RCSMACS_EAC','PreOverTime','Detected');
      CreateSignal('RCSMACS_EAC','','Logged');
      CreateSignal('RCSMACS_EAC','','Detected');
  end
catch
end

% RCSMACS_EACWeledDetn
try
  if (strcmp(class(evalin('base','RCSMACS_EACWeledDetn')),'mpt.Signal'))
      OriginalConf = SaveOriginalConf('RCSMACS_EACWeledDetn');
      SetNewConfiguration('RCSMACS_EAC','Weled','Detn')
      Modified_Data = CheckConfiguration(OriginalConf,'RCSMACS_EACWeledDetn',Modified_Data);
      CreateSignal('RCSMACS_EAC','Weled','Logged');
      CreateSignal('RCSMACS_EAC','Weled','Detected');
      CreateSignal('RCSMACS_EAC','','Logged');
      CreateSignal('RCSMACS_EAC','','Detected');
  end
catch
end

% RCSMACS_MainPosDrvErrDetn
try
  if (strcmp(class(evalin('base','RCSMACS_MainPosDrvErrDetn')),'mpt.Signal'))
      OriginalConf = SaveOriginalConf('RCSMACS_MainPosDrvErrDetn');
      SetNewConfiguration('RCSMACS_MainPos','DrvErr','Detn')
      Modified_Data = CheckConfiguration(OriginalConf,'RCSMACS_MainPosDrvErrDetn',Modified_Data);
      CreateSignal('RCSMACS_MainPos','DrvErr','Logged');
      CreateSignal('RCSMACS_MainPos','DrvErr','Detected');
      CreateSignal('RCSMACS_MainPos','','Logged');
      CreateSignal('RCSMACS_MainPos','','Detected');
  end
catch
end

% RCSMACS_MainPosPreFailedDetn
try
  if (strcmp(class(evalin('base','RCSMACS_MainPosPreFailedDetn')),'mpt.Signal'))
      OriginalConf = SaveOriginalConf('RCSMACS_MainPosPreFailedDetn');
      SetNewConfiguration('RCSMACS_MainPos','PreFailed','Detn')
      Modified_Data = CheckConfiguration(OriginalConf,'RCSMACS_MainPosPreFailedDetn',Modified_Data);
      CreateSignal('RCSMACS_MainPos','PreFailed','Logged');
      CreateSignal('RCSMACS_MainPos','PreFailed','Detected');
      CreateSignal('RCSMACS_MainPos','','Logged');
      CreateSignal('RCSMACS_MainPos','','Detected');
  end
catch
end

% RCSMACS_MainPosPreOverTimeDetn
try
  if (strcmp(class(evalin('base','RCSMACS_MainPosPreOverTimeDetn')),'mpt.Signal'))
      OriginalConf = SaveOriginalConf('RCSMACS_MainPosPreOverTimeDetn');
      SetNewConfiguration('RCSMACS_MainPos','PreOverTime','Detn')
      Modified_Data = CheckConfiguration(OriginalConf,'RCSMACS_MainPosPreOverTimeDetn',Modified_Data);
      CreateSignal('RCSMACS_MainPos','PreOverTime','Logged');
      CreateSignal('RCSMACS_MainPos','PreOverTime','Detected');
      CreateSignal('RCSMACS_MainPos','','Logged');
      CreateSignal('RCSMACS_MainPos','','Detected');
  end
catch
end

% RCSMACS_MainPosWeledDetn
try
  if (strcmp(class(evalin('base','RCSMACS_MainPosWeledDetn')),'mpt.Signal'))
      OriginalConf = SaveOriginalConf('RCSMACS_MainPosWeledDetn');
      SetNewConfiguration('RCSMACS_MainPos','Weled','Detn')
      Modified_Data = CheckConfiguration(OriginalConf,'RCSMACS_MainPosWeledDetn',Modified_Data);
      CreateSignal('RCSMACS_MainPos','Weled','Logged');
      CreateSignal('RCSMACS_MainPos','Weled','Detected');
      CreateSignal('RCSMACS_MainPos','','Logged');
      CreateSignal('RCSMACS_MainPos','','Detected');
  end
catch
end

% RCSMACS_PreMainDrvErrDetn
try
  if (strcmp(class(evalin('base','RCSMACS_PreMainDrvErrDetn')),'mpt.Signal'))
      OriginalConf = SaveOriginalConf('RCSMACS_PreMainDrvErrDetn');
      SetNewConfiguration('RCSMACS_PreMain','DrvErr','Detn')
      Modified_Data = CheckConfiguration(OriginalConf,'RCSMACS_PreMainDrvErrDetn',Modified_Data);
      CreateSignal('RCSMACS_PreMain','DrvErr','Logged');
      CreateSignal('RCSMACS_PreMain','DrvErr','Detected');
      CreateSignal('RCSMACS_PreMain','','Logged');
      CreateSignal('RCSMACS_PreMain','','Detected');
  end
catch
end

% RCSMACS_PreMainPreFailedDetn
try
  if (strcmp(class(evalin('base','RCSMACS_PreMainPreFailedDetn')),'mpt.Signal'))
      OriginalConf = SaveOriginalConf('RCSMACS_PreMainPreFailedDetn');
      SetNewConfiguration('RCSMACS_PreMain','PreFailed','Detn')
      Modified_Data = CheckConfiguration(OriginalConf,'RCSMACS_PreMainPreFailedDetn',Modified_Data);
      CreateSignal('RCSMACS_PreMain','PreFailed','Logged');
      CreateSignal('RCSMACS_PreMain','PreFailed','Detected');
      CreateSignal('RCSMACS_PreMain','','Logged');
      CreateSignal('RCSMACS_PreMain','','Detected');
  end
catch
end

% RCSMACS_PreMainPreOverTimeDetn
try
  if (strcmp(class(evalin('base','RCSMACS_PreMainPreOverTimeDetn')),'mpt.Signal'))
      OriginalConf = SaveOriginalConf('RCSMACS_PreMainPreOverTimeDetn');
      SetNewConfiguration('RCSMACS_PreMain','PreOverTime','Detn')
      Modified_Data = CheckConfiguration(OriginalConf,'RCSMACS_PreMainPreOverTimeDetn',Modified_Data);
      CreateSignal('RCSMACS_PreMain','PreOverTime','Logged');
      CreateSignal('RCSMACS_PreMain','PreOverTime','Detected');
      CreateSignal('RCSMACS_PreMain','','Logged');
      CreateSignal('RCSMACS_PreMain','','Detected');
  end
catch
end

% RCSMACS_PreMainWeledDetn
try
  if (strcmp(class(evalin('base','RCSMACS_PreMainWeledDetn')),'mpt.Signal'))
      OriginalConf = SaveOriginalConf('RCSMACS_PreMainWeledDetn');
      SetNewConfiguration('RCSMACS_PreMain','Weled','Detn')
      Modified_Data = CheckConfiguration(OriginalConf,'RCSMACS_PreMainWeledDetn',Modified_Data);
      CreateSignal('RCSMACS_PreMain','Weled','Logged');
      CreateSignal('RCSMACS_PreMain','Weled','Detected');
      CreateSignal('RCSMACS_PreMain','','Logged');
      CreateSignal('RCSMACS_PreMain','','Detected');
  end
catch
end

% RCSMACS_SCUDrvErrDetn
try
  if (strcmp(class(evalin('base','RCSMACS_SCUDrvErrDetn')),'mpt.Signal'))
      OriginalConf = SaveOriginalConf('RCSMACS_SCUDrvErrDetn');
      SetNewConfiguration('RCSMACS_SCU','DrvErr','Detn')
      Modified_Data = CheckConfiguration(OriginalConf,'RCSMACS_SCUDrvErrDetn',Modified_Data);
      CreateSignal('RCSMACS_SCU','DrvErr','Logged');
      CreateSignal('RCSMACS_SCU','DrvErr','Detected');
      CreateSignal('RCSMACS_SCU','','Logged');
      CreateSignal('RCSMACS_SCU','','Detected');
  end
catch
end

% RCSMACS_SCUPreFailedDetn
try
  if (strcmp(class(evalin('base','RCSMACS_SCUPreFailedDetn')),'mpt.Signal'))
      OriginalConf = SaveOriginalConf('RCSMACS_SCUPreFailedDetn');
      SetNewConfiguration('RCSMACS_SCU','PreFailed','Detn')
      Modified_Data = CheckConfiguration(OriginalConf,'RCSMACS_SCUPreFailedDetn',Modified_Data);
      CreateSignal('RCSMACS_SCU','PreFailed','Logged');
      CreateSignal('RCSMACS_SCU','PreFailed','Detected');
      CreateSignal('RCSMACS_SCU','','Logged');
      CreateSignal('RCSMACS_SCU','','Detected');
  end
catch
end

% RCSMACS_SCUPreOverTimeDetn
try
  if (strcmp(class(evalin('base','RCSMACS_SCUPreOverTimeDetn')),'mpt.Signal'))
      OriginalConf = SaveOriginalConf('RCSMACS_SCUPreOverTimeDetn');
      SetNewConfiguration('RCSMACS_SCU','PreOverTime','Detn')
      Modified_Data = CheckConfiguration(OriginalConf,'RCSMACS_SCUPreOverTimeDetn',Modified_Data);
      CreateSignal('RCSMACS_SCU','PreOverTime','Logged');
      CreateSignal('RCSMACS_SCU','PreOverTime','Detected');
      CreateSignal('RCSMACS_SCU','','Logged');
      CreateSignal('RCSMACS_SCU','','Detected');
  end
catch
end

% RCSMACS_SCUWeledDetn
try
  if (strcmp(class(evalin('base','RCSMACS_SCUWeledDetn')),'mpt.Signal'))
      OriginalConf = SaveOriginalConf('RCSMACS_SCUWeledDetn');
      SetNewConfiguration('RCSMACS_SCU','Weled','Detn')
      Modified_Data = CheckConfiguration(OriginalConf,'RCSMACS_SCUWeledDetn',Modified_Data);
      CreateSignal('RCSMACS_SCU','Weled','Logged');
      CreateSignal('RCSMACS_SCU','Weled','Detected');
      CreateSignal('RCSMACS_SCU','','Logged');
      CreateSignal('RCSMACS_SCU','','Detected');
  end
catch
end

% RCSMACS_MainPosCmdOverTimeDetn
try
  if (strcmp(class(evalin('base','RCSMACS_MainPosCmdOverTimeDetn')),'mpt.Signal'))
      OriginalConf = SaveOriginalConf('RCSMACS_MainPosCmdOverTimeDetn');
      SetNewConfiguration('RCSMACS_','MainPosCmdOverTime','Detn')
      Modified_Data = CheckConfiguration(OriginalConf,'RCSMACS_MainPosCmdOverTimeDetn',Modified_Data);
      CreateSignal('RCSMACS_','MainPosCmdOverTime','Logged');
      CreateSignal('RCSMACS_','MainPosCmdOverTime','Detected');
      CreateSignal('RCSMACS_','','Logged');
      CreateSignal('RCSMACS_','','Detected');
  end
catch
end

% RCSMACS_SCUCmdOverTimeDetn
try
  if (strcmp(class(evalin('base','RCSMACS_SCUCmdOverTimeDetn')),'mpt.Signal'))
      OriginalConf = SaveOriginalConf('RCSMACS_SCUCmdOverTimeDetn');
      SetNewConfiguration('RCSMACS_','SCUCmdOverTime','Detn')
      Modified_Data = CheckConfiguration(OriginalConf,'RCSMACS_SCUCmdOverTimeDetn',Modified_Data);
      CreateSignal('RCSMACS_','SCUCmdOverTime','Logged');
      CreateSignal('RCSMACS_','SCUCmdOverTime','Detected');
      CreateSignal('RCSMACS_','','Logged');
      CreateSignal('RCSMACS_','','Detected');
  end
catch
end

% RCSMACS_BatHeatCmdOverTimeDetn
try
  if (strcmp(class(evalin('base','RCSMACS_BatHeatCmdOverTimeDetn')),'mpt.Signal'))
      OriginalConf = SaveOriginalConf('RCSMACS_BatHeatCmdOverTimeDetn');
      SetNewConfiguration('RCSMACS_','BatHeatCmdOverTime','Detn')
      Modified_Data = CheckConfiguration(OriginalConf,'RCSMACS_BatHeatCmdOverTimeDetn',Modified_Data);
      CreateSignal('RCSMACS_','BatHeatCmdOverTime','Logged');
      CreateSignal('RCSMACS_','BatHeatCmdOverTime','Detected');
      CreateSignal('RCSMACS_','','Logged');
      CreateSignal('RCSMACS_','','Detected');
  end
catch
end

% RCSMACS_EACCmdOverTimeDetn
try
  if (strcmp(class(evalin('base','RCSMACS_EACCmdOverTimeDetn')),'mpt.Signal'))
      OriginalConf = SaveOriginalConf('RCSMACS_EACCmdOverTimeDetn');
      SetNewConfiguration('RCSMACS_','EACCmdOverTime','Detn')
      Modified_Data = CheckConfiguration(OriginalConf,'RCSMACS_EACCmdOverTimeDetn',Modified_Data);
      CreateSignal('RCSMACS_','EACCmdOverTime','Logged');
      CreateSignal('RCSMACS_','EACCmdOverTime','Detected');
      CreateSignal('RCSMACS_','','Logged');
      CreateSignal('RCSMACS_','','Detected');
  end
catch
end

% RCSMACS_FastChgNeg1DrvErrDetn
try
  if (strcmp(class(evalin('base','RCSMACS_FastChgNeg1DrvErrDetn')),'mpt.Signal'))
      OriginalConf = SaveOriginalConf('RCSMACS_FastChgNeg1DrvErrDetn');
      SetNewConfiguration('RCSMACS_FastChgNeg','1DrvErr','Detn')
      Modified_Data = CheckConfiguration(OriginalConf,'RCSMACS_FastChgNeg1DrvErrDetn',Modified_Data);
      CreateSignal('RCSMACS_FastChgNeg','1DrvErr','Logged');
      CreateSignal('RCSMACS_FastChgNeg','1DrvErr','Detected');
      CreateSignal('RCSMACS_FastChgNeg','','Logged');
      CreateSignal('RCSMACS_FastChgNeg','','Detected');
  end
catch
end

% RCSMACS_FastChgNeg1PreFailedDetn
try
  if (strcmp(class(evalin('base','RCSMACS_FastChgNeg1PreFailedDetn')),'mpt.Signal'))
      OriginalConf = SaveOriginalConf('RCSMACS_FastChgNeg1PreFailedDetn');
      SetNewConfiguration('RCSMACS_FastChgNeg','1PreFailed','Detn')
      Modified_Data = CheckConfiguration(OriginalConf,'RCSMACS_FastChgNeg1PreFailedDetn',Modified_Data);
      CreateSignal('RCSMACS_FastChgNeg','1PreFailed','Logged');
      CreateSignal('RCSMACS_FastChgNeg','1PreFailed','Detected');
      CreateSignal('RCSMACS_FastChgNeg','','Logged');
      CreateSignal('RCSMACS_FastChgNeg','','Detected');
  end
catch
end

% RCSMACS_FastChgNeg1PreOverTimeDetn
try
  if (strcmp(class(evalin('base','RCSMACS_FastChgNeg1PreOverTimeDetn')),'mpt.Signal'))
      OriginalConf = SaveOriginalConf('RCSMACS_FastChgNeg1PreOverTimeDetn');
      SetNewConfiguration('RCSMACS_FastChgNeg','1PreOverTime','Detn')
      Modified_Data = CheckConfiguration(OriginalConf,'RCSMACS_FastChgNeg1PreOverTimeDetn',Modified_Data);
      CreateSignal('RCSMACS_FastChgNeg','1PreOverTime','Logged');
      CreateSignal('RCSMACS_FastChgNeg','1PreOverTime','Detected');
      CreateSignal('RCSMACS_FastChgNeg','','Logged');
      CreateSignal('RCSMACS_FastChgNeg','','Detected');
  end
catch
end

% RCSMACS_FastChgNeg1WeledDetn
try
  if (strcmp(class(evalin('base','RCSMACS_FastChgNeg1WeledDetn')),'mpt.Signal'))
      OriginalConf = SaveOriginalConf('RCSMACS_FastChgNeg1WeledDetn');
      SetNewConfiguration('RCSMACS_FastChgNeg','1Weled','Detn')
      Modified_Data = CheckConfiguration(OriginalConf,'RCSMACS_FastChgNeg1WeledDetn',Modified_Data);
      CreateSignal('RCSMACS_FastChgNeg','1Weled','Logged');
      CreateSignal('RCSMACS_FastChgNeg','1Weled','Detected');
      CreateSignal('RCSMACS_FastChgNeg','','Logged');
      CreateSignal('RCSMACS_FastChgNeg','','Detected');
  end
catch
end

% RCSMACS_FastChgNeg2DrvErrDetn
try
  if (strcmp(class(evalin('base','RCSMACS_FastChgNeg2DrvErrDetn')),'mpt.Signal'))
      OriginalConf = SaveOriginalConf('RCSMACS_FastChgNeg2DrvErrDetn');
      SetNewConfiguration('RCSMACS_FastChgNeg','2DrvErr','Detn')
      Modified_Data = CheckConfiguration(OriginalConf,'RCSMACS_FastChgNeg2DrvErrDetn',Modified_Data);
      CreateSignal('RCSMACS_FastChgNeg','2DrvErr','Logged');
      CreateSignal('RCSMACS_FastChgNeg','2DrvErr','Detected');
      CreateSignal('RCSMACS_FastChgNeg','','Logged');
      CreateSignal('RCSMACS_FastChgNeg','','Detected');
  end
catch
end

% RCSMACS_FastChgNeg2PreFailedDetn
try
  if (strcmp(class(evalin('base','RCSMACS_FastChgNeg2PreFailedDetn')),'mpt.Signal'))
      OriginalConf = SaveOriginalConf('RCSMACS_FastChgNeg2PreFailedDetn');
      SetNewConfiguration('RCSMACS_FastChgNeg','2PreFailed','Detn')
      Modified_Data = CheckConfiguration(OriginalConf,'RCSMACS_FastChgNeg2PreFailedDetn',Modified_Data);
      CreateSignal('RCSMACS_FastChgNeg','2PreFailed','Logged');
      CreateSignal('RCSMACS_FastChgNeg','2PreFailed','Detected');
      CreateSignal('RCSMACS_FastChgNeg','','Logged');
      CreateSignal('RCSMACS_FastChgNeg','','Detected');
  end
catch
end

% RCSMACS_FastChgNeg2PreOverTimeDetn
try
  if (strcmp(class(evalin('base','RCSMACS_FastChgNeg2PreOverTimeDetn')),'mpt.Signal'))
      OriginalConf = SaveOriginalConf('RCSMACS_FastChgNeg2PreOverTimeDetn');
      SetNewConfiguration('RCSMACS_FastChgNeg','2PreOverTime','Detn')
      Modified_Data = CheckConfiguration(OriginalConf,'RCSMACS_FastChgNeg2PreOverTimeDetn',Modified_Data);
      CreateSignal('RCSMACS_FastChgNeg','2PreOverTime','Logged');
      CreateSignal('RCSMACS_FastChgNeg','2PreOverTime','Detected');
      CreateSignal('RCSMACS_FastChgNeg','','Logged');
      CreateSignal('RCSMACS_FastChgNeg','','Detected');
  end
catch
end

% RCSMACS_FastChgNeg2WeledDetn
try
  if (strcmp(class(evalin('base','RCSMACS_FastChgNeg2WeledDetn')),'mpt.Signal'))
      OriginalConf = SaveOriginalConf('RCSMACS_FastChgNeg2WeledDetn');
      SetNewConfiguration('RCSMACS_FastChgNeg','2Weled','Detn')
      Modified_Data = CheckConfiguration(OriginalConf,'RCSMACS_FastChgNeg2WeledDetn',Modified_Data);
      CreateSignal('RCSMACS_FastChgNeg','2Weled','Logged');
      CreateSignal('RCSMACS_FastChgNeg','2Weled','Detected');
      CreateSignal('RCSMACS_FastChgNeg','','Logged');
      CreateSignal('RCSMACS_FastChgNeg','','Detected');
  end
catch
end

% RCSMACS_FastChgNeg3DrvErrDetn
try
  if (strcmp(class(evalin('base','RCSMACS_FastChgNeg3DrvErrDetn')),'mpt.Signal'))
      OriginalConf = SaveOriginalConf('RCSMACS_FastChgNeg3DrvErrDetn');
      SetNewConfiguration('RCSMACS_FastChgNeg','3DrvErr','Detn')
      Modified_Data = CheckConfiguration(OriginalConf,'RCSMACS_FastChgNeg3DrvErrDetn',Modified_Data);
      CreateSignal('RCSMACS_FastChgNeg','3DrvErr','Logged');
      CreateSignal('RCSMACS_FastChgNeg','3DrvErr','Detected');
      CreateSignal('RCSMACS_FastChgNeg','','Logged');
      CreateSignal('RCSMACS_FastChgNeg','','Detected');
  end
catch
end

% RCSMACS_FastChgNeg3PreFailedDetn
try
  if (strcmp(class(evalin('base','RCSMACS_FastChgNeg3PreFailedDetn')),'mpt.Signal'))
      OriginalConf = SaveOriginalConf('RCSMACS_FastChgNeg3PreFailedDetn');
      SetNewConfiguration('RCSMACS_FastChgNeg','3PreFailed','Detn')
      Modified_Data = CheckConfiguration(OriginalConf,'RCSMACS_FastChgNeg3PreFailedDetn',Modified_Data);
      CreateSignal('RCSMACS_FastChgNeg','3PreFailed','Logged');
      CreateSignal('RCSMACS_FastChgNeg','3PreFailed','Detected');
      CreateSignal('RCSMACS_FastChgNeg','','Logged');
      CreateSignal('RCSMACS_FastChgNeg','','Detected');
  end
catch
end

% RCSMACS_FastChgNeg3PreOverTimeDetn
try
  if (strcmp(class(evalin('base','RCSMACS_FastChgNeg3PreOverTimeDetn')),'mpt.Signal'))
      OriginalConf = SaveOriginalConf('RCSMACS_FastChgNeg3PreOverTimeDetn');
      SetNewConfiguration('RCSMACS_FastChgNeg','3PreOverTime','Detn')
      Modified_Data = CheckConfiguration(OriginalConf,'RCSMACS_FastChgNeg3PreOverTimeDetn',Modified_Data);
      CreateSignal('RCSMACS_FastChgNeg','3PreOverTime','Logged');
      CreateSignal('RCSMACS_FastChgNeg','3PreOverTime','Detected');
      CreateSignal('RCSMACS_FastChgNeg','','Logged');
      CreateSignal('RCSMACS_FastChgNeg','','Detected');
  end
catch
end

% RCSMACS_FastChgNeg3WeledDetn
try
  if (strcmp(class(evalin('base','RCSMACS_FastChgNeg3WeledDetn')),'mpt.Signal'))
      OriginalConf = SaveOriginalConf('RCSMACS_FastChgNeg3WeledDetn');
      SetNewConfiguration('RCSMACS_FastChgNeg','3Weled','Detn')
      Modified_Data = CheckConfiguration(OriginalConf,'RCSMACS_FastChgNeg3WeledDetn',Modified_Data);
      CreateSignal('RCSMACS_FastChgNeg','3Weled','Logged');
      CreateSignal('RCSMACS_FastChgNeg','3Weled','Detected');
      CreateSignal('RCSMACS_FastChgNeg','','Logged');
      CreateSignal('RCSMACS_FastChgNeg','','Detected');
  end
catch
end

% RCSMACS_FastChgNeg4DrvErrDetn
try
  if (strcmp(class(evalin('base','RCSMACS_FastChgNeg4DrvErrDetn')),'mpt.Signal'))
      OriginalConf = SaveOriginalConf('RCSMACS_FastChgNeg4DrvErrDetn');
      SetNewConfiguration('RCSMACS_FastChgNeg','4DrvErr','Detn')
      Modified_Data = CheckConfiguration(OriginalConf,'RCSMACS_FastChgNeg4DrvErrDetn',Modified_Data);
      CreateSignal('RCSMACS_FastChgNeg','4DrvErr','Logged');
      CreateSignal('RCSMACS_FastChgNeg','4DrvErr','Detected');
      CreateSignal('RCSMACS_FastChgNeg','','Logged');
      CreateSignal('RCSMACS_FastChgNeg','','Detected');
  end
catch
end

% RCSMACS_FastChgNeg4PreFailedDetn
try
  if (strcmp(class(evalin('base','RCSMACS_FastChgNeg4PreFailedDetn')),'mpt.Signal'))
      OriginalConf = SaveOriginalConf('RCSMACS_FastChgNeg4PreFailedDetn');
      SetNewConfiguration('RCSMACS_FastChgNeg','4PreFailed','Detn')
      Modified_Data = CheckConfiguration(OriginalConf,'RCSMACS_FastChgNeg4PreFailedDetn',Modified_Data);
      CreateSignal('RCSMACS_FastChgNeg','4PreFailed','Logged');
      CreateSignal('RCSMACS_FastChgNeg','4PreFailed','Detected');
      CreateSignal('RCSMACS_FastChgNeg','','Logged');
      CreateSignal('RCSMACS_FastChgNeg','','Detected');
  end
catch
end

% RCSMACS_FastChgNeg4PreOverTimeDetn
try
  if (strcmp(class(evalin('base','RCSMACS_FastChgNeg4PreOverTimeDetn')),'mpt.Signal'))
      OriginalConf = SaveOriginalConf('RCSMACS_FastChgNeg4PreOverTimeDetn');
      SetNewConfiguration('RCSMACS_FastChgNeg','4PreOverTime','Detn')
      Modified_Data = CheckConfiguration(OriginalConf,'RCSMACS_FastChgNeg4PreOverTimeDetn',Modified_Data);
      CreateSignal('RCSMACS_FastChgNeg','4PreOverTime','Logged');
      CreateSignal('RCSMACS_FastChgNeg','4PreOverTime','Detected');
      CreateSignal('RCSMACS_FastChgNeg','','Logged');
      CreateSignal('RCSMACS_FastChgNeg','','Detected');
  end
catch
end

% RCSMACS_FastChgNeg4WeledDetn
try
  if (strcmp(class(evalin('base','RCSMACS_FastChgNeg4WeledDetn')),'mpt.Signal'))
      OriginalConf = SaveOriginalConf('RCSMACS_FastChgNeg4WeledDetn');
      SetNewConfiguration('RCSMACS_FastChgNeg','4Weled','Detn')
      Modified_Data = CheckConfiguration(OriginalConf,'RCSMACS_FastChgNeg4WeledDetn',Modified_Data);
      CreateSignal('RCSMACS_FastChgNeg','4Weled','Logged');
      CreateSignal('RCSMACS_FastChgNeg','4Weled','Detected');
      CreateSignal('RCSMACS_FastChgNeg','','Logged');
      CreateSignal('RCSMACS_FastChgNeg','','Detected');
  end
catch
end

% RCSMACS_FastChgPos1DrvErrDetn
try
  if (strcmp(class(evalin('base','RCSMACS_FastChgPos1DrvErrDetn')),'mpt.Signal'))
      OriginalConf = SaveOriginalConf('RCSMACS_FastChgPos1DrvErrDetn');
      SetNewConfiguration('RCSMACS_FastChgPos','1DrvErr','Detn')
      Modified_Data = CheckConfiguration(OriginalConf,'RCSMACS_FastChgPos1DrvErrDetn',Modified_Data);
      CreateSignal('RCSMACS_FastChgPos','1DrvErr','Logged');
      CreateSignal('RCSMACS_FastChgPos','1DrvErr','Detected');
      CreateSignal('RCSMACS_FastChgPos','','Logged');
      CreateSignal('RCSMACS_FastChgPos','','Detected');
  end
catch
end

% RCSMACS_FastChgPos1PreFailedDetn
try
  if (strcmp(class(evalin('base','RCSMACS_FastChgPos1PreFailedDetn')),'mpt.Signal'))
      OriginalConf = SaveOriginalConf('RCSMACS_FastChgPos1PreFailedDetn');
      SetNewConfiguration('RCSMACS_FastChgPos','1PreFailed','Detn')
      Modified_Data = CheckConfiguration(OriginalConf,'RCSMACS_FastChgPos1PreFailedDetn',Modified_Data);
      CreateSignal('RCSMACS_FastChgPos','1PreFailed','Logged');
      CreateSignal('RCSMACS_FastChgPos','1PreFailed','Detected');
      CreateSignal('RCSMACS_FastChgPos','','Logged');
      CreateSignal('RCSMACS_FastChgPos','','Detected');
  end
catch
end

% RCSMACS_FastChgPos1PreOverTimeDetn
try
  if (strcmp(class(evalin('base','RCSMACS_FastChgPos1PreOverTimeDetn')),'mpt.Signal'))
      OriginalConf = SaveOriginalConf('RCSMACS_FastChgPos1PreOverTimeDetn');
      SetNewConfiguration('RCSMACS_FastChgPos','1PreOverTime','Detn')
      Modified_Data = CheckConfiguration(OriginalConf,'RCSMACS_FastChgPos1PreOverTimeDetn',Modified_Data);
      CreateSignal('RCSMACS_FastChgPos','1PreOverTime','Logged');
      CreateSignal('RCSMACS_FastChgPos','1PreOverTime','Detected');
      CreateSignal('RCSMACS_FastChgPos','','Logged');
      CreateSignal('RCSMACS_FastChgPos','','Detected');
  end
catch
end

% RCSMACS_FastChgPos1WeledDetn
try
  if (strcmp(class(evalin('base','RCSMACS_FastChgPos1WeledDetn')),'mpt.Signal'))
      OriginalConf = SaveOriginalConf('RCSMACS_FastChgPos1WeledDetn');
      SetNewConfiguration('RCSMACS_FastChgPos','1Weled','Detn')
      Modified_Data = CheckConfiguration(OriginalConf,'RCSMACS_FastChgPos1WeledDetn',Modified_Data);
      CreateSignal('RCSMACS_FastChgPos','1Weled','Logged');
      CreateSignal('RCSMACS_FastChgPos','1Weled','Detected');
      CreateSignal('RCSMACS_FastChgPos','','Logged');
      CreateSignal('RCSMACS_FastChgPos','','Detected');
  end
catch
end

% RCSMACS_FastChgPos2DrvErrDetn
try
  if (strcmp(class(evalin('base','RCSMACS_FastChgPos2DrvErrDetn')),'mpt.Signal'))
      OriginalConf = SaveOriginalConf('RCSMACS_FastChgPos2DrvErrDetn');
      SetNewConfiguration('RCSMACS_FastChgPos','2DrvErr','Detn')
      Modified_Data = CheckConfiguration(OriginalConf,'RCSMACS_FastChgPos2DrvErrDetn',Modified_Data);
      CreateSignal('RCSMACS_FastChgPos','2DrvErr','Logged');
      CreateSignal('RCSMACS_FastChgPos','2DrvErr','Detected');
      CreateSignal('RCSMACS_FastChgPos','','Logged');
      CreateSignal('RCSMACS_FastChgPos','','Detected');
  end
catch
end

% RCSMACS_FastChgPos2PreFailedDetn
try
  if (strcmp(class(evalin('base','RCSMACS_FastChgPos2PreFailedDetn')),'mpt.Signal'))
      OriginalConf = SaveOriginalConf('RCSMACS_FastChgPos2PreFailedDetn');
      SetNewConfiguration('RCSMACS_FastChgPos','2PreFailed','Detn')
      Modified_Data = CheckConfiguration(OriginalConf,'RCSMACS_FastChgPos2PreFailedDetn',Modified_Data);
      CreateSignal('RCSMACS_FastChgPos','2PreFailed','Logged');
      CreateSignal('RCSMACS_FastChgPos','2PreFailed','Detected');
      CreateSignal('RCSMACS_FastChgPos','','Logged');
      CreateSignal('RCSMACS_FastChgPos','','Detected');
  end
catch
end

% RCSMACS_FastChgPos2PreOverTimeDetn
try
  if (strcmp(class(evalin('base','RCSMACS_FastChgPos2PreOverTimeDetn')),'mpt.Signal'))
      OriginalConf = SaveOriginalConf('RCSMACS_FastChgPos2PreOverTimeDetn');
      SetNewConfiguration('RCSMACS_FastChgPos','2PreOverTime','Detn')
      Modified_Data = CheckConfiguration(OriginalConf,'RCSMACS_FastChgPos2PreOverTimeDetn',Modified_Data);
      CreateSignal('RCSMACS_FastChgPos','2PreOverTime','Logged');
      CreateSignal('RCSMACS_FastChgPos','2PreOverTime','Detected');
      CreateSignal('RCSMACS_FastChgPos','','Logged');
      CreateSignal('RCSMACS_FastChgPos','','Detected');
  end
catch
end

% RCSMACS_FastChgPos2WeledDetn
try
  if (strcmp(class(evalin('base','RCSMACS_FastChgPos2WeledDetn')),'mpt.Signal'))
      OriginalConf = SaveOriginalConf('RCSMACS_FastChgPos2WeledDetn');
      SetNewConfiguration('RCSMACS_FastChgPos','2Weled','Detn')
      Modified_Data = CheckConfiguration(OriginalConf,'RCSMACS_FastChgPos2WeledDetn',Modified_Data);
      CreateSignal('RCSMACS_FastChgPos','2Weled','Logged');
      CreateSignal('RCSMACS_FastChgPos','2Weled','Detected');
      CreateSignal('RCSMACS_FastChgPos','','Logged');
      CreateSignal('RCSMACS_FastChgPos','','Detected');
  end
catch
end

% RCSMACS_FastChgPos3DrvErrDetn
try
  if (strcmp(class(evalin('base','RCSMACS_FastChgPos3DrvErrDetn')),'mpt.Signal'))
      OriginalConf = SaveOriginalConf('RCSMACS_FastChgPos3DrvErrDetn');
      SetNewConfiguration('RCSMACS_FastChgPos','3DrvErr','Detn')
      Modified_Data = CheckConfiguration(OriginalConf,'RCSMACS_FastChgPos3DrvErrDetn',Modified_Data);
      CreateSignal('RCSMACS_FastChgPos','3DrvErr','Logged');
      CreateSignal('RCSMACS_FastChgPos','3DrvErr','Detected');
      CreateSignal('RCSMACS_FastChgPos','','Logged');
      CreateSignal('RCSMACS_FastChgPos','','Detected');
  end
catch
end

% RCSMACS_FastChgPos3PreFailedDetn
try
  if (strcmp(class(evalin('base','RCSMACS_FastChgPos3PreFailedDetn')),'mpt.Signal'))
      OriginalConf = SaveOriginalConf('RCSMACS_FastChgPos3PreFailedDetn');
      SetNewConfiguration('RCSMACS_FastChgPos','3PreFailed','Detn')
      Modified_Data = CheckConfiguration(OriginalConf,'RCSMACS_FastChgPos3PreFailedDetn',Modified_Data);
      CreateSignal('RCSMACS_FastChgPos','3PreFailed','Logged');
      CreateSignal('RCSMACS_FastChgPos','3PreFailed','Detected');
      CreateSignal('RCSMACS_FastChgPos','','Logged');
      CreateSignal('RCSMACS_FastChgPos','','Detected');
  end
catch
end

% RCSMACS_FastChgPos3PreOverTimeDetn
try
  if (strcmp(class(evalin('base','RCSMACS_FastChgPos3PreOverTimeDetn')),'mpt.Signal'))
      OriginalConf = SaveOriginalConf('RCSMACS_FastChgPos3PreOverTimeDetn');
      SetNewConfiguration('RCSMACS_FastChgPos','3PreOverTime','Detn')
      Modified_Data = CheckConfiguration(OriginalConf,'RCSMACS_FastChgPos3PreOverTimeDetn',Modified_Data);
      CreateSignal('RCSMACS_FastChgPos','3PreOverTime','Logged');
      CreateSignal('RCSMACS_FastChgPos','3PreOverTime','Detected');
      CreateSignal('RCSMACS_FastChgPos','','Logged');
      CreateSignal('RCSMACS_FastChgPos','','Detected');
  end
catch
end

% RCSMACS_FastChgPos3WeledDetn
try
  if (strcmp(class(evalin('base','RCSMACS_FastChgPos3WeledDetn')),'mpt.Signal'))
      OriginalConf = SaveOriginalConf('RCSMACS_FastChgPos3WeledDetn');
      SetNewConfiguration('RCSMACS_FastChgPos','3Weled','Detn')
      Modified_Data = CheckConfiguration(OriginalConf,'RCSMACS_FastChgPos3WeledDetn',Modified_Data);
      CreateSignal('RCSMACS_FastChgPos','3Weled','Logged');
      CreateSignal('RCSMACS_FastChgPos','3Weled','Detected');
      CreateSignal('RCSMACS_FastChgPos','','Logged');
      CreateSignal('RCSMACS_FastChgPos','','Detected');
  end
catch
end

% RCSMACS_FastChgPos4DrvErrDetn
try
  if (strcmp(class(evalin('base','RCSMACS_FastChgPos4DrvErrDetn')),'mpt.Signal'))
      OriginalConf = SaveOriginalConf('RCSMACS_FastChgPos4DrvErrDetn');
      SetNewConfiguration('RCSMACS_FastChgPos','4DrvErr','Detn')
      Modified_Data = CheckConfiguration(OriginalConf,'RCSMACS_FastChgPos4DrvErrDetn',Modified_Data);
      CreateSignal('RCSMACS_FastChgPos','4DrvErr','Logged');
      CreateSignal('RCSMACS_FastChgPos','4DrvErr','Detected');
      CreateSignal('RCSMACS_FastChgPos','','Logged');
      CreateSignal('RCSMACS_FastChgPos','','Detected');
  end
catch
end

% RCSMACS_FastChgPos4PreFailedDetn
try
  if (strcmp(class(evalin('base','RCSMACS_FastChgPos4PreFailedDetn')),'mpt.Signal'))
      OriginalConf = SaveOriginalConf('RCSMACS_FastChgPos4PreFailedDetn');
      SetNewConfiguration('RCSMACS_FastChgPos','4PreFailed','Detn')
      Modified_Data = CheckConfiguration(OriginalConf,'RCSMACS_FastChgPos4PreFailedDetn',Modified_Data);
      CreateSignal('RCSMACS_FastChgPos','4PreFailed','Logged');
      CreateSignal('RCSMACS_FastChgPos','4PreFailed','Detected');
      CreateSignal('RCSMACS_FastChgPos','','Logged');
      CreateSignal('RCSMACS_FastChgPos','','Detected');
  end
catch
end

% RCSMACS_FastChgPos4PreOverTimeDetn
try
  if (strcmp(class(evalin('base','RCSMACS_FastChgPos4PreOverTimeDetn')),'mpt.Signal'))
      OriginalConf = SaveOriginalConf('RCSMACS_FastChgPos4PreOverTimeDetn');
      SetNewConfiguration('RCSMACS_FastChgPos','4PreOverTime','Detn')
      Modified_Data = CheckConfiguration(OriginalConf,'RCSMACS_FastChgPos4PreOverTimeDetn',Modified_Data);
      CreateSignal('RCSMACS_FastChgPos','4PreOverTime','Logged');
      CreateSignal('RCSMACS_FastChgPos','4PreOverTime','Detected');
      CreateSignal('RCSMACS_FastChgPos','','Logged');
      CreateSignal('RCSMACS_FastChgPos','','Detected');
  end
catch
end

% RCSMACS_FastChgPos4WeledDetn
try
  if (strcmp(class(evalin('base','RCSMACS_FastChgPos4WeledDetn')),'mpt.Signal'))
      OriginalConf = SaveOriginalConf('RCSMACS_FastChgPos4WeledDetn');
      SetNewConfiguration('RCSMACS_FastChgPos','4Weled','Detn')
      Modified_Data = CheckConfiguration(OriginalConf,'RCSMACS_FastChgPos4WeledDetn',Modified_Data);
      CreateSignal('RCSMACS_FastChgPos','4Weled','Logged');
      CreateSignal('RCSMACS_FastChgPos','4Weled','Detected');
      CreateSignal('RCSMACS_FastChgPos','','Logged');
      CreateSignal('RCSMACS_FastChgPos','','Detected');
  end
catch
end

% FaultFailureLevel
try
    evalin('base','FaultFailureLevel = mpt.Signal;');
    localFaultFailureLevel = evalin('base','FaultFailureLevel');
    localFaultFailureLevel.CoderInfo.CustomStorageClass = 'ImportFromFile';
    localFaultFailureLevel.CoderInfo.CustomAttributes.DataAccess = 'Direct';
    localFaultFailureLevel.CoderInfo.CustomAttributes.HeaderFile = 'FAULT.h';
    localFaultFailureLevel.Description = '';
    localFaultFailureLevel.DataType = 'uint8';
    localFaultFailureLevel.Min = 0;
    localFaultFailureLevel.Max = 255;
    localFaultFailureLevel.DocUnits = 'DEC';
    localFaultFailureLevel.Dimensions = -1;
    localFaultFailureLevel.Complexity = 'real';
    localFaultFailureLevel.SampleTime = -1;
    localFaultFailureLevel.SamplingMode = 'Sample based';
    localFaultFailureLevel.InitialValue = '0';
    assignin('base','FaultFailureLevel',localFaultFailureLevel);
catch
end

% Display modified data and write txt files
SortedList = sort(Modified_Data);
fid = fopen('fault_list.txt', 'w');
ChunksListCol1 = {};
ChunksListCol2 = {};
ChunksListCol3 = {};
ChunksListCol4 = {};
for idx=1:length(SortedList)
    SortedList{idx} = regexprep(SortedList{idx},'New_Configuration_Parameter','');
    ChunksListLine = regexp(SortedList{idx},'&&&&','split');
    for idxLine=1:length(ChunksListLine)
        ChunksList = regexp(ChunksListLine{idxLine},'\|','split');
        ChunksListCol1{length(ChunksListCol1)+1} = ChunksList{1};
        ChunksListCol2{length(ChunksListCol2)+1} = ChunksList{2};
        ChunksListCol3{length(ChunksListCol3)+1} = ChunksList{3};
        ChunksListCol4{length(ChunksListCol4)+1} = ChunksList{4};
    end
end
ColSize1    = max(cellfun('length',ChunksListCol1));
ColSize2    = max(cellfun('length',ChunksListCol2));
ColSize3    = max(cellfun('length',ChunksListCol3));
ColSize4    = max(cellfun('length',ChunksListCol4));
for IdxData=1:length(SortedList)
    ChunksListLine = regexp(SortedList{IdxData},'&&&&','split');
    ChunksListDisp = regexp(SortedList{IdxData},'\|','split');
    if(IdxData ~= 1)
        disp(['info: ' ChunksListDisp{1} ' CoderInfo Configuration is updated.']);
    end
    for idxLine=1:length(ChunksListLine)
        ChunksList = regexp(ChunksListLine{idxLine},'\|','split');
        fprintf(fid,'%s%s|%s%s|%s%s|%s%s|\n',ChunksList{1},repmat(' ',1,ColSize1-length(ChunksList{1})),ChunksList{2},...
   repmat(' ',1,ColSize2-length(ChunksList{2})),ChunksList{3},repmat(' ',1,ColSize3-length(ChunksList{3})),...
   ChunksList{4},repmat(' ',1,ColSize4-length(ChunksList{4})));
        if(idxLine<length(ChunksListLine))
            fprintf(fid,'%s|%s|%s|%s|\n',repmat(' ',1,ColSize1),repmat('-',1,ColSize2),repmat('-',1,ColSize3),repmat('-',1,ColSize4));
        end
    end
    fprintf(fid,'%s|%s|%s|%s|\n',repmat('-',1,ColSize1),repmat('-',1,ColSize2),repmat('-',1,ColSize3),repmat('-',1,ColSize4));
end
fclose(fid);
end

% Save Old CoderInfo Configuration
function Arg_OriginalConf = SaveOriginalConf(Arg_DataName)
    try
       Arg_OriginalConf.Arg_DataName.CoderInfo.CustomStorageClass = evalin('base',[ '' Arg_DataName '.CoderInfo.CustomStorageClass']);
    catch
       Arg_OriginalConf.Arg_DataName.CoderInfo.CustomStorageClass = 'New_Configuration_Parameter';
    end
    try
       Arg_OriginalConf.Arg_DataName.CoderInfo.CustomAttributes.HeaderFile = evalin('base',[ '' Arg_DataName '.CoderInfo.CustomAttributes.HeaderFile']);
    catch
       Arg_OriginalConf.Arg_DataName.CoderInfo.CustomAttributes.HeaderFile = 'New_Configuration_Parameter';
    end
    try
       Arg_OriginalConf.Arg_DataName.CoderInfo.CustomAttributes.GetFunction = evalin('base',[ '' Arg_DataName '.CoderInfo.CustomAttributes.GetFunction']);
    catch
       Arg_OriginalConf.Arg_DataName.CoderInfo.CustomAttributes.GetFunction = 'New_Configuration_Parameter';
    end
    try
       Arg_OriginalConf.Arg_DataName.CoderInfo.CustomAttributes.SetFunction = evalin('base',[ '' Arg_DataName '.CoderInfo.CustomAttributes.SetFunction']);
    catch
       Arg_OriginalConf.Arg_DataName.CoderInfo.CustomAttributes.SetFunction = 'New_Configuration_Parameter';
    end
end

% Set New CoderInfo Configuration
function SetNewConfiguration(Arg_function_name,Arg_function_type_name,Arg_Suffix)
    LocalDataObject = evalin('base',[Arg_function_name Arg_function_type_name Arg_Suffix]);
    LocalDataObject.CoderInfo.CustomStorageClass = 'GetSet';
    LocalDataObject.CoderInfo.CustomAttributes.HeaderFile = 'FAULT.h';
    LocalDataObject.CoderInfo.CustomAttributes.GetFunction = '';
    LocalDataObject.CoderInfo.CustomAttributes.SetFunction = ['FaultDetn_' Arg_function_name Arg_function_type_name];
    assignin('base',[Arg_function_name Arg_function_type_name Arg_Suffix],LocalDataObject);
end

% Check Configuration
function Arg_ModifBuffer = CheckConfiguration(Arg_OriginalConf,Arg_DataName,Arg_ModifBuffer)
    ModifiedStorageData = '';
    ModifiedHeaderData = '';
    ModifiedGetFunctionData = '';
    ModifiedSetFunctionData = '';
    if(~strcmp(Arg_OriginalConf.Arg_DataName.CoderInfo.CustomStorageClass,evalin('base',[Arg_DataName '.CoderInfo.CustomStorageClass'])))
       ModifiedStorageClass = true;
       ModifiedStorageData  = ['CustomStorageClass| ' Arg_OriginalConf.Arg_DataName.CoderInfo.CustomStorageClass ' | ' evalin('base',[Arg_DataName '.CoderInfo.CustomStorageClass']) '&&&&|'];
    else
       ModifiedStorageClass = false;
    end
    if(~strcmp(Arg_OriginalConf.Arg_DataName.CoderInfo.CustomAttributes.HeaderFile,evalin('base',[Arg_DataName '.CoderInfo.CustomAttributes.HeaderFile'])))
       ModifiedHeaderFile = true;
       ModifiedHeaderData = ['HeaderFile| ' Arg_OriginalConf.Arg_DataName.CoderInfo.CustomAttributes.HeaderFile ' | ' evalin('base',[Arg_DataName '.CoderInfo.CustomAttributes.HeaderFile']) '&&&&|'];
    else
       ModifiedHeaderFile = false;
    end
    if(~strcmp(Arg_OriginalConf.Arg_DataName.CoderInfo.CustomAttributes.GetFunction,evalin('base',[Arg_DataName '.CoderInfo.CustomAttributes.GetFunction'])))
       ModifiedGetFunction = true;
       ModifiedGetFunctionData = ['GetFunction| ' Arg_OriginalConf.Arg_DataName.CoderInfo.CustomAttributes.GetFunction ' | ' evalin('base',[Arg_DataName '.CoderInfo.CustomAttributes.GetFunction']) '&&&&|'];
    else
       ModifiedGetFunction = false;
    end
    if(~strcmp(Arg_OriginalConf.Arg_DataName.CoderInfo.CustomAttributes.SetFunction,evalin('base',[Arg_DataName '.CoderInfo.CustomAttributes.SetFunction'])))
       ModifiedSetFunction = true;
       ModifiedSetFunctionData = ['SetFunction| ' Arg_OriginalConf.Arg_DataName.CoderInfo.CustomAttributes.SetFunction ' | ' evalin('base',[Arg_DataName '.CoderInfo.CustomAttributes.SetFunction']) '&&&&|'];
    else
       ModifiedSetFunction = false;
    end
    if(ModifiedStorageClass||ModifiedHeaderFile||ModifiedGetFunction||ModifiedSetFunction)
       Counter = length(Arg_ModifBuffer) + 1;
       Arg_ModifBuffer{Counter} = ['' Arg_DataName '|' ModifiedStorageData ModifiedHeaderData ModifiedGetFunctionData ModifiedSetFunctionData];
       Arg_ModifBuffer{Counter} = regexprep(Arg_ModifBuffer{Counter},'&&&&\|$','');
    end
end

% Create Logged Component
function CreateSignal(Arg_function_name,Arg_function_type_name,Arg_Suffix)
    evalin('base',['Fault' Arg_function_name Arg_function_type_name Arg_Suffix ' = mpt.Signal;']);
    LocalSignal = evalin('base',['Fault' Arg_function_name Arg_function_type_name Arg_Suffix]);
    LocalSignal.CoderInfo.CustomStorageClass = 'GetSet';
    LocalSignal.CoderInfo.CustomAttributes.HeaderFile = 'FAULT.h';
    if(isempty(Arg_function_type_name))
        LocalSignal.CoderInfo.CustomAttributes.GetFunction = ['(boolean)FaultDetn_u16Read_' Arg_function_name Arg_Suffix];
    else
        LocalSignal.CoderInfo.CustomAttributes.GetFunction = ['(boolean)FaultDetn_u16Read_' Arg_function_name Arg_function_type_name Arg_Suffix];
    end
    LocalSignal.CoderInfo.CustomAttributes.SetFunction = '';
    LocalSignal.Description = '';
    LocalSignal.DataType = 'boolean';
    LocalSignal.Min = 0;
    LocalSignal.Max = 1;
    LocalSignal.DocUnits = 'Boolean';
    LocalSignal.Dimensions = -1;
    LocalSignal.Complexity = 'real';
    LocalSignal.SampleTime = -1;
    LocalSignal.SamplingMode = 'Sample based';
    LocalSignal.InitialValue = '0';
    assignin('base',['Fault' Arg_function_name Arg_function_type_name Arg_Suffix],LocalSignal);
end
