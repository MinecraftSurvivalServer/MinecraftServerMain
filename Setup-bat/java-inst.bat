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

@REM curl���g���ă��|�W�g�����_�E�����[�h
    echo Downloading repository...
    call jdk-21.0.3_windows-x64_bin.msi /norestart


@REM @REM tar���g����ZIP�t�@�C������
@REM     echo !LOG_R! ZIP��W�J���Ă��܂�...
@REM     tar -xf !ZIP_FILE!



pause
endlocal
exit /b 0