@echo off
setlocal enabledelayedexpansion

set wget_log_pass=

@REM config.ini ��ǂݍ���
    @REM config.ini ��ǂݍ���
    for /f "tokens=1,2 delims==" %%a in (config.ini) do (
        set %%a=%%b
    )

@REM �J�����g�f�B���N�g����\��
    echo Current directory: %CD%

pause
@REM wget���g���ă��|�W�g�����_�E�����[�h

    
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