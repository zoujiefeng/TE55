@echo off

.\UpdateConfig_XCP.py

cd .\temp

call PreCopy.bat

cd ..

.\APAP2-DataBase-AutoGenTool.exe

.\Release\CopyLatestA2lToAppRelease.py
