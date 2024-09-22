@echo off
setlocal

@REM �J�����g�f�B���N�g����\��
    echo Current directory: %CD%

@REM curl���g���ă��|�W�g�����_�E�����[�h
    echo Downloading repository...
    curl -L -o %ZIP_FILE% %GITHUB_URL%

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