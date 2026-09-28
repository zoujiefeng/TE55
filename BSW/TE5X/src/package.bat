md TempRelease
md TempRelease\Database

copy ".\TOOLS\DFLT_TC387_MCU_APP_CALIBUSER_FilledCC.s19"  ".\TempRelease\DFLT_TC375_MCU_APP_CALIBUSER_FilledCC.s19"
copy ".\TOOLS\*.ulp"  ".\TempRelease\*.ulp"

copy ".\Database\*"  ".\TempRelease\Database\*"
copy ".\output\dbg\*.map"  ".\TempRelease\Database\*.map"
copy ".\TOOLS\GenA2L\Temp\a2l_hd150_mcu\P_TC387_PLATFORM_0_0.a2l"  ".\TempRelease\Database\P_TC387_PLATFORM_0_0.a2l"
