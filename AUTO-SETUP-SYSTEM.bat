@echo off
setlocal enabledelayedexpansion


@REM config.ini ��ǂݍ���
    cd Setup-bat
    @REM config.ini ��ǂݍ���
    for /f "tokens=1,2 delims==" %%a in (config.ini) do (
        set %%a=%%b
    )

    @REM @REM RESET �̊m�F
    @REM echo !RED!This is a test message!RESET!
    @REM cd

@REM call����
    call set.bat
    @REM tmp�m�F�p�ҋ@(�폜����)
        echo !LOG![LOG]!RESET! 10 �b�ҋ@���܂�...
        timeout /t 10 /nobreak
        echo !LOG![LOG]!RESET! ���Ԍo��

    call temp-del.bat


endlocal
pause