@echo off
setlocal enabledelayedexpansion
chcp 932

:: config �擾
for /f "tokens=1,2 delims==" %%a in (config.ini) do (
 set %%a=%%b
)

cd ../Servers/PaperMC
title Paper-run.bat

:: �T�[�o�[���N������R�}���h
java !java_Xms_M_re!

endlocal
exit /b
