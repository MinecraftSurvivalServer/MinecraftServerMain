@echo off
setlocal

@REM config.ini ��ǂݍ���
    @REM config.ini ��ǂݍ���
    for /f "tokens=1,2 delims==" %%a in (config.ini) do (
        set %%a=%%b
    )

@REM �f�B���N�g�����w��
    cd .temp

@REM �폜�v���Z�X
    @REM.tmp �t�@�C���̑��݂��m�F
        set FILE_PATTERN=*.tmp
        set FILE_COUNT=0

    @REM ���݂���.tmp�t�@�C���̃J�E���g
        for %%F in (%FILE_PATTERN%) do (
            set /a FILE_COUNT+=1
        )

    @REM.tmp �t�@�C�������݂��Ȃ��ꍇ�A�G���[��\��
        if %FILE_COUNT%==0 (
            echo !ERROR_R! �Y���t�@�C�������݂��܂���B�������I�����܂��B
            exit /b 1
        )

    @REM.tmp �t�@�C�����폜
        echo !LOG_R! .tmp �t�@�C�����폜���Ă��܂�...
        del /q "%FILE_PATTERN%"

    @REM �폜���ʂ�\��
        if errorlevel 1 (
            echo !ERROR_R! �t�@�C���̍폜���ɃG���[���������܂����B
            exit /b 1
        ) else (
            echo !LOG_R! ���ׂĂ̍폜�ɐ������܂����B
        )


endlocal
exit /b 0