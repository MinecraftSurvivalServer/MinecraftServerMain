@echo off
chcp 932
setlocal enabledelayedexpansion
set title=�����Z�b�g�A�b�v�V�X�e�����s��...
title %title%

@REM config.ini ��ǂݍ���
    cd Setup-bat
    @REM config.ini ��ǂݍ���
    for /f "tokens=1,2 delims==" %%a in (config.ini) do (
        set %%a=%%b
    )



@REM �_�E�����[�h����
    call download-github.bat
    if errorlevel 1 (
        title %title%
        echo !ERROR_R! �����_�E�����[�h�V�X�e���̎��s�����m���܂����B�������I�����܂��B
    )
    if errorlevel 0 (
        title %title%
        echo !SUCCESS_R! �����_�E�����[�h�V�X�e���̐��������m���܂����B�������I�����܂��B
    )

    call java-inst.bat
    if errorlevel 1 (
        title %title%
        echo !ERROR_R! �����_�E�����[�h�V�X�e���̎��s�����m���܂����B�������I�����܂��B
    )
    if errorlevel 0 (
        title %title%
        echo !SUCCESS_R! �����_�E�����[�h�V�X�e���̐��������m���܂����B�������I�����܂��B
    )

endlocal
pause