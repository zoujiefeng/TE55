SET winadesPATH=P:\WINADES\EXP\LIV\v5.2\winades


rem Update donnee.txt
copy "%~dp0..\..\donnee\donnee.txt" "%~dp0GeneBase\donnee.txt"
copy "%~dp0..\..\donnee\donnee.txt" "%~dp0DicoToBase\donnee.txt"

%~dp0DicoToBase\DicoToBase.exe /inDir:%~dp0DicoToBase /outDir:%~dp0DicoToBase /mysqlDir:%~dp0DicoToBase

rem Update *.int
call %~dp0..\AppTransfor\genint\genint.bat %*
rem Update Rp2ToBd3List.txt and *.rp2
call %~dp0..\_rp2SET\00-GenRp2ToBd3List.py

copy "%~dp0DicoToBase\caractab.txt"                "%~dp0GeneBase\caractab.txt"
copy "%~dp0DicoToBase\caractab3.txt"               "%~dp0GeneBase\caractab3.txt"
copy "%~dp0DicoToBase\caracter.txt"                "%~dp0GeneBase\caracter.txt"
copy "%~dp0DicoToBase\caracter3.txt"               "%~dp0GeneBase\caracter3.txt"
copy "%~dp0DicoToBase\comment.txt"                 "%~dp0GeneBase\comment.txt"
copy "%~dp0DicoToBase\comment3.txt"                "%~dp0GeneBase\comment3.txt"
copy "%~dp0DicoToBase\enumere.txt"                 "%~dp0GeneBase\enumere.txt"
copy "%~dp0DicoToBase\enumere3.txt"                "%~dp0GeneBase\enumere3.txt"
copy "%~dp0DicoToBase\groupes.txt"                 "%~dp0GeneBase\groupes.txt"
copy "%~dp0DicoToBase\groupes3.txt"                "%~dp0GeneBase\groupes3.txt"
copy "%~dp0DicoToBase\referenc.txt"                "%~dp0GeneBase\referenc.txt"
copy "%~dp0DicoToBase\referenc3.txt"               "%~dp0GeneBase\referenc3.txt"
copy "%~dp0..\..\output\dbg\D_TC375_PLATFORM_0_0.elf"   "%~dp0GeneBase\D_TC375_PLATFORM_0_0.elf"
copy "%~dp0..\..\output\dbg\D_TC375_PLATFORM_0_0.map"   "%~dp0GeneBase\D_TC375_PLATFORM_0_0.map"
copy "%~dp0..\..\output\dbg\D_TC375_PLATFORM_0_0.map"   "%~dp0..\GenA2L\Temp\BUILD\D_TC375_PLATFORM_0_0.map"
copy "%~dp0..\..\output\dbg\D_TC375_PLATFORM_0_0.map"   "%~dp0..\GenA2L_XCP\Temp\BUILD\D_TC375_PLATFORM_0_0.map"

cd %~dp0GeneBase
set "directory=%~dp0%GeneBase"

del *.BDD
del *.BD3
rmdir /q /s "%~dp0GeneBase\..\..\..\Database\"

call %~dp0GeneBase\genebase.exe /ini:%~dp0GeneBase\D_TC375_PLATFORM_0_0.ini /nogui /output:"%~dp0GeneBase\D_TC375_PLATFORM_0_0.a2l"

call %winadesPATH% @%~dp0GeneBase\Rp2ToBd3List.txt >%~dp0GeneBase\Rp2ToBd3.log
rem type cmdout.txt
if not exist "%~dp0GeneBase\..\..\..\Database\" md "%~dp0GeneBase\..\..\..\Database\"

SET "BD3List=CARACTAB.BD3 CARACTER.BD3 COMMENT.BD3 ENUMERE.BD3 GROUPES.BD3 REFERENC.BD3 REV_VER.BD3 REVISION.BD3 REVISTAB.BD3 VERSIONS.BD3"

for %%i in (%BD3List%) do (
   copy /y %%i "%~dp0GeneBase\..\..\..\Database\*.BD3"
   if errorlevel 1 cd %~dp0 & echo copy %%i failed,please check donnee file & goto ERROR
)

cd %~dp0

del "%~dp0GeneBase\..\..\GenA2L\Temp\a2l_hd150_mcu\P_TC375_PLATFORM_0_0.a2l"
del "%~dp0GeneBase\..\..\GenA2L_XCP\Temp\a2l_hd150_mcu\P_TC375_PLATFORM_0_0.a2l"

if [%1]==[] goto END

cd %1
rem echo %cd%
goto END

:ERROR
color 4f
pause
goto END

:END
color
