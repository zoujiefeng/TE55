@echo off

rd /S /Q .\Database

start /WAIT cmd /c "cd .\TOOLS\TimeStampGenerator & .\TimeStampGenerator.bat"


cd .\bswcdd\Dsm\_CFG_
.\GenApiNoLock.py

if %errorlevel% == 0 ( GOTO NeedCompiled ) else ( GOTO Compiled )

:NeedCompiled
cd ..
rem backup
copy ".\fault\FAULT_Api.c"                 ".\fault\FAULT_Api.backc"
copy ".\fault\FAULT_Api.h"                 ".\fault\FAULT_Api.backh"
copy ".\fault\FAULT_Data.c"                ".\fault\FAULT_Data.backc"
copy ".\fault\FAULT_Data.h"                ".\fault\FAULT_Data.backh"
rem copy
copy ".\_CFG_\FAULT_Api.c"               ".\fault\FAULT_Api.c"
copy ".\_CFG_\FAULT_Api.h"               ".\fault\FAULT_Api.h"
copy ".\_CFG_\FAULT_Data.c"              ".\fault\FAULT_Data.c"
copy ".\_CFG_\FAULT_Data.h"              ".\fault\FAULT_Data.h"
del  ".\_CFG_\FAULT_Api.c"
del  ".\_CFG_\FAULT_Api.h"
del  ".\_CFG_\FAULT_Data.c"
del  ".\_CFG_\FAULT_Data.h"
cd ..\..\
scons -j8
if %errorlevel% == 0 ( GOTO OK ) else ( GOTO ERROR )

:Compiled
cd ..
cd ..\..\
scons -j8
if %errorlevel% == 0 ( GOTO OK ) else ( GOTO ERROR )

:OK
echo compile successfully
set batPATH=%~dp0
if not exist Database md Database

if exist DEBUG (
   rem file exists 
	%batPATH%donnee\donneePackage.py
	echo GEN DEBUG DATABASE
	%batPATH%TOOLS\GenDataBase\GenBase_DEBUG.bat 
	cd %batPATH%
) 
if exist PROD (
   rem file doesn't exist
	%batPATH%donnee\donneePackage.py
	echo GEN PROD DATABASE
	%batPATH%TOOLS\GenDataBase\GenBase_PROD.bat 
python %batPATH%TOOLS\AppTransfor\genulp\00_GenulpScript.py
	cd %batPATH%
)

:ERROR
