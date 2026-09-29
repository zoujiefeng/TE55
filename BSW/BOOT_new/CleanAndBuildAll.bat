@echo off

setlocal

:PROMPT

SET /P AREYOUSURE=Do you really want to delete object files (this has impact on compilation time) [Y]/[N]?
IF /I "%AREYOUSURE%" NEQ "Y" GOTO END


RMDIR /S /Q build
RMDIR /S /Q log



call BuildFbl.bat
call BuildSbl.bat
:END
endlocal