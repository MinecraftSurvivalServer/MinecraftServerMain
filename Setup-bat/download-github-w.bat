@echo off
chcp 932
setlocal enabledelayedexpansion

set wget_o_pass=wget_log

@REM config.ini ��ǂݍ���
    @REM config.ini ��ǂݍ���
    for /f "tokens=1,2 delims==" %%a in (config.ini) do (
        set %%a=%%b
    )

cd install

@REM wget���g���ă��|�W�g�����_�E�����[�h
    wget -o %wget_o_pass% !GITHUB_URL!
    pause
    
@REM �_�E�����[�h���������������m�F
    if not exist %ZIP_FILE% (
        echo Download failed. Exiting.
        pause
        exit /b 1
    )

@REM tar���g����ZIP�t�@�C������
    echo Extracting ZIP file...
    tar -xf %ZIP_FILE%

@REM �𓀂��������������m�F
    if not exist %EXTRACT_DIR% (
        echo Extraction failed. Exiting.
        pause
        exit /b 1
    )

@REM �_�E�����[�h����ZIP�t�@�C�����폜
    echo Cleaning up...
    del %ZIP_FILE%

echo Done.
pause
endlocal
exit /b 0