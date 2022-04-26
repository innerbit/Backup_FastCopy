@ECHO off
color 80
MODE CON COLS=80 LINES=15
REM FOR /L %%W IN (14,1,45) DO MODE CON:LINES=15 COLS=%%W
REM FOR /L %%W IN (1,1,20) DO MODE CON:COLS=80 LINES=%%W
	:start 
		CLS 
		echo Backup v17
		echo.
		date /t
		echo Computador: %computername% Usuario: %username% 
		echo.
		echo Menu Principal de Backup
		echo.
		echo FastCopy 
		echo.
		echo ====================
		echo 1. Backup 
		echo 2. Restauracao
		echo.
		echo 0. Voltar para Menu Principal
		echo ====================
		echo.
		set /p choice="Escolha sua opcao: " 
			if "%choice%"=="1" goto submenu_1 
			if "%choice%"=="2" goto submenu_2 
			if "%choice%"=="0" goto start

		:submenu_1
			set fastcopy=FastCopy.exe
			echo %fastcopy%
			goto submenu_3_1
		:submenu_2
			set fastcopy=FastCopy.exe
			echo %fastcopy%
			goto submenu_3_2

	REM BACKUP FASTCOPY
			:submenu_3_1 
				cls
				echo.
				echo FastCopy 
				echo.
				echo ========================================
				echo Realizar Backup
				echo ========================================		
				ECHO 1 - Backup Completo
				ECHO 2 - Backup (Users, Disco C)
				ECHO 3 - Backup (Users, Disco C,  Arq.Progx86,  Arq.Progx64)
				ECHO 4 - Backup (Users, Disco C, Disco D, Arq.Progx86, Arq.Progx64)
				ECHO 5 - Backup (Users, Disco C, Disco D, Disco E, Arq.Progx86, Arq.Progx64)
				ECHO 6 - Backup (Users, Disco C, Disco D, Disco E, Disco F, Arq.Progx86, Arq.Progx64)
				ECHO 7 - Backup (Users, Disco C, Disco D)
				ECHO 8 - Backup Manual
				ECHO.
				ECHO 0 - Voltar no Menu Principal
				echo ========================================
				ECHO.
				SET /P M=Numero 1, 2, 3, 4, 0, Digite sua opcao, ENTER:
					IF %M%==1 call Scripts\backup\backup-01.bat
					IF %M%==2 call Scripts\backup\backup-02.bat
					IF %M%==3 call Scripts\backup\backup-03.bat
					IF %M%==4 call Scripts\backup\backup-04.bat
					IF %M%==5 call Scripts\backup\backup-05.bat
					IF %M%==6 call Scripts\backup\backup-06.bat
					IF %M%==7 call Scripts\backup\backup-07.bat
					IF %M%==8 call Scripts\backup\backup-08.bat
					IF %M%==0 goto start
					goto submenu_1
			
	REM RESTAURAR FASTCOPY
			:submenu_3_2 
				cls
				echo.
				echo FastCopy 
				echo.
				echo ========================================
				echo Restaurar Backup
				echo ========================================
				ECHO 1 - Restaurar Backup
				echo.
				ECHO 0 - Voltar no Menu Principal
				echo ========================================  
				ECHO.
				SET /P M=Numero 1, 2, 3, 4, 0, Digite sua opcao, ENTER:
					IF %M%==1 call Scripts\restaurar\restaurar-01.bat
					IF %M%==0 goto start
					goto submenu_1

