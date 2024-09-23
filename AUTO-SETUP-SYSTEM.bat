@echo off
chcp 932
setlocal enabledelayedexpansion
title �����_�E�����[�h�V�X�e�����s��...

set GITHUB_URL=https://github.com/akikukeo/minecraft-server/archive/refs/heads/inst-sys.zip
set ZIP_FILE=.\minecraft-server-inst-sys.zip
set EXTRACT_DIR=.\minecraft-inst-sys



    md install
    cd install
    
@REM curl���g���ă��|�W�g�����_�E�����[�h
    echo Downloading repository...
    curl -L -o %ZIP_FILE% %GITHUB_URL%

@REM @REM �_�E�����[�h���������������m�F
@REM     if not exist %ZIP_FILE% (
@REM         echo %ERROR_R% �_�E�����[�h�Ɏ��s���܂����B�������I�����܂��B
@REM         exit /b 1
@REM     )  else (
@REM             echo %LOG_R% �_�E�����[�h���������܂����B
@REM     )

@REM tar���g����ZIP�t�@�C������
    echo %LOG_R% ZIP��W�J���Ă��܂�...
    tar -xf %ZIP_FILE%

@REM @REM �𓀂��������������m�F
@REM     if not exist %EXTRACT_DIR% (
@REM         echo %LOG_R% �W�J�Ɏ��s���܂����B�������I�����܂��B
@REM         exit /b 1
@REM     )

@REM @REM �_�E�����[�h����ZIP�t�@�C�����폜
@REM     echo %LOG_R% ZIP���폜���Ă��܂�...
@REM     del %ZIP_FILE%

echo ���ׂẴ_�E�����[�h���������܂����B

cd minecraft-server-inst-sys
call AUTO-SETUP-SYSTEM.bat
cd Setup-bat/install/minecraft-server-main
call Auto-startup.bat

endlocal
pause
exit /b 0