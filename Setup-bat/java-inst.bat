@echo off
chcp 932
setlocal enabledelayedexpansion
title �����_�E�����[�h�V�X�e�����s��...

@REM config.ini ��ǂݍ���
    @REM config.ini ��ǂݍ���
    for /f "tokens=1,2 delims==" %%a in (config.ini) do (
        set %%a=%%b
    )

cd install

@REM curl���g����java���_�E�����[�h
    curl -s !JAVA_URL! -O

    call jdk-21.0.3_windows-x64_bin.exe


@REM @REM tar���g����ZIP�t�@�C������
@REM     echo !LOG_R! ZIP��W�J���Ă��܂�...
@REM     tar -xf !ZIP_FILE!


endlocal
exit /b 0