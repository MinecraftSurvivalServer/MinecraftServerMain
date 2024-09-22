@echo off
setlocal enabledelayedexpansion

@REM config.ini ��ǂݍ���
    @REM config.ini ��ǂݍ���
    for /f "tokens=1,2 delims==" %%a in (config.ini) do (
        set %%a=%%b
    )

cd install

@REM curl���g���ă��|�W�g�����_�E�����[�h
    echo Downloading repository...
    curl -L -o !ZIP_FILE! !GITHUB_URL!

@REM �_�E�����[�h���������������m�F
    if not exist !ZIP_FILE! (
        echo !ERROR![ERROR]!RESET! �_�E�����[�h�Ɏ��s���܂����B�������I�����܂��B
        pause
        exit /b 1
    )  else (
            echo !LOG![LOG]!RESET! �_�E�����[�h���������܂����B
    )


@REM tar���g����ZIP�t�@�C������
    echo !LOG![LOG]!RESET! ZIP��W�J���Ă��܂�...
    tar -xf !ZIP_FILE!

@REM �𓀂��������������m�F
    if not exist !EXTRACT_DIR! (
        echo !LOG![LOG]!RESET! �W�J�Ɏ��s���܂����B�������I�����܂��B
        pause
        exit /b 1
    )

@REM �_�E�����[�h����ZIP�t�@�C�����폜
    echo !LOG![LOG]!RESET! ZIP���폜���Ă��܂�...
    del !ZIP_FILE!

echo !LOG![LOG]!RESET! ���ׂẴ_�E�����[�h���������܂����B
pause
endlocal
exit /b 0