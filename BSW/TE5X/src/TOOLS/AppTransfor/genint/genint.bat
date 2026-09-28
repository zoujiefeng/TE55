@echo off

if [%1]==[] goto NOROOTPATH ELSE goto ROOTPATH

:NOROOTPATH
rem "Please input the root path of the project"
SET rootdirPATH=%~dp0..\..\..\
GOTO CONVERTCAL

:ROOTPATH
SET rootdirPATH=%1
GOTO CONVERTCAL


:CONVERTCAL
SET ProjName=P_TC387_PLATFORM_0_0

SET SrcFilePATH=%rootdirPATH%output\hex\%ProjName%
SET DestFilePATH=%rootdirPATH%TOOLS\GenDataBase\GeneBase\%ProjName%

rem SET DestFileTestPATH=%~dp0%ProjName%

call %~dp0..\transfor /mc /var:SrcHex="%SrcFilePATH%" /var:DestInt="%DestFilePATH%" @%~dp0convertcal.tfm

