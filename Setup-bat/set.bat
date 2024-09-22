@echo off
setlocal enabledelayedexpansion

@REM GitHub���|�W�g���̏���ݒ�
    set GITHUB_URL=https://github.com/akikukeo/minecraft-server/archive/refs/heads/main.zip
    set ZIP_FILE=.\minecraft-server.zip
    set EXTRACT_DIR=.\minecraft-server-main



@REM.tmp �ɏ�������
    echo !LOG![LOG]!RESET! !echo7!
    (
        echo [download-github.bat]
        echo GITHUB_URL=%GITHUB_URL%
        echo ZIP_FILE=%ZIP_FILE%
        echo EXTRACT_DIR=%EXTRACT_DIR%
    ) > ./.temp/test.tmp

    if errorlevel 1 (
        echo !ERROR![ERROR]!RESET!�������߂܂���ł����B
        exit /b 1
    ) else (
        echo !LOG![LOG]!RESET!�������݂��������܂����B
    )

endlocal
exit /b 0