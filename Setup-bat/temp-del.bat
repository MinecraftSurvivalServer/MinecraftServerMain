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
            echo !ERROR![ERROR]!RESET! !echo3!
            exit /b 1
        )

    @REM.tmp �t�@�C�����폜
        echo !LOG![LOG]!RESET! !echo4!
        del /q "%FILE_PATTERN%"

    @REM �폜���ʂ�\��
        if errorlevel 1 (
            echo !ERROR![ERROR]!RESET! !echo5!
            exit /b 1
        ) else (
            echo !LOG![LOG]!RESET! !echo6!
        )


endlocal
exit /b 0