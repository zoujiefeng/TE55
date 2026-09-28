@echo off 
REM: make directories
rd /s /q BSW_Release

python -m bswcdd.Dsm.faultoil2faultm


rem if not exist BSW_Release md BSW_Release

md BSW_Release
cd BSW_Release
if not exist SWC_BSW md SWC_BSW
cd SWC_BSW
if not exist include md include
if not exist lib md lib
if not exist prj md prj

REM: coypy header files
cd ..\..\
for /r .\bsw\ %%i in (*.h) do ( copy /y %%i ".\BSW_Release\SWC_BSW\include")
for /r .\bswcdd\ %%i in (*.h) do ( copy /y %%i ".\BSW_Release\SWC_BSW\include")
for /r .\Integration\ %%i in (*.h) do ( copy /y %%i ".\BSW_Release\SWC_BSW\include")
for /r .\os\ %%i in (*.h) do ( copy /y %%i ".\BSW_Release\SWC_BSW\include")
for /r .\Targets\ %%i in (*.h) do ( copy /y %%i ".\BSW_Release\SWC_BSW\include")

for /r .\output\objs\bsw\ %%i in (*.o) do ( copy /y %%i ".\BSW_Release\SWC_BSW\lib")
for /r .\output\objs\bswcdd\ %%i in (*.o) do ( copy /y %%i ".\BSW_Release\SWC_BSW\lib")
for /r .\output\objs\Integration\ %%i in (*.o) do ( copy /y %%i ".\BSW_Release\SWC_BSW\lib")
for /r .\output\objs\os\ %%i in (*.o) do ( copy /y %%i ".\BSW_Release\SWC_BSW\lib")
for /r .\output\objs\Targets\ %%i in (*.o) do ( copy /y %%i ".\BSW_Release\SWC_BSW\lib")

REM: coypy linker file
cd .\Targets\TC38xx\Linker
copy /y *.ld "..\..\..\BSW_Release\SWC_BSW\prj"
cd ..\..\..\

REM: coypy library files
copy /y .\os\RTAOS.a .\BSW_Release\SWC_BSW\lib

rem if not exist .\BSW_Release md .\BSW_Release

rem xcopy /E /I /Y SWC_BSW .\BSW_Release\SWC_BSW\
xcopy /E /I /Y rte    .\BSW_Release\rte\
xcopy /E /I /Y main   .\BSW_Release\main\
xcopy /E /I /Y donnee .\BSW_Release\donnee\
xcopy /E /I /Y ASW    .\BSW_Release\ASW\
copy .\bswcdd\Dsm\_CFG_\FAULT.oil    .\BSW_Release\FAULT.oil
copy .\bswcdd\Dsm\fault\FAULT_FF.oil    .\BSW_Release\FAULT_FF.oil
copy .\bswcdd\Dsm\_CFG_\FAULT.m    .\BSW_Release\FAULT.m

rem rd /s /q SWC_BSW

"C:\Program Files\7-Zip\7z.exe" a BSW_Release.7z BSW_Release\

if [%1]==[] goto END

rd /s /q BSW_Release

:END
echo Release successfully 
