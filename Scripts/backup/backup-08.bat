@ECHO Off
REM BACKUP FASTCOPY
REM -
REM ORIGEM: Backup Manual
REM -
REM -
REM Escolha a Unidade
	cls
	echo.
	echo # - - - - - - - - - - - - - - - - - - - - - - - - - #
	echo #                ESCOLHA UNIDADE DO DISCO D         #
	echo # - - - - - - - - - - - - - - - - - - - - - - - - - #
	echo.
		set /p disco-d="Unidade do Disco: " 
		echo %disco-d%
REM -
REM Escolha o nome do Backup
	cls
	echo.
	echo # - - - - - - - - - - - - - - - - - - - - - - - - - #
	echo #                NOME DO BACKUP		         #
	echo # - - - - - - - - - - - - - - - - - - - - - - - - - #
	echo.
		set /p nome-bkp="Nome do Backup: " 
		echo %nome-bkp%


REM Executar Backup Automatico
REM 	cls
REM 	echo.
REM 	echo # - - - - - - - - - - - - - - - - - - - - - - - - - #
REM 	echo #                Executar Automatico                #
REM 	echo # - - - - - - - - - - - - - - - - - - - - - - - - - #
REM 	echo ====================
REM 	echo. 
REM 	echo 1. Automatico 
REM 	echo 2. Manual
REM 	echo.
REM 	echo ====================
REM 	echo.
REM 	set /p auto="Escolha sua opcao: " 
REM		if "%auto%"=="1"
REM		if "%auto%"=="2" echo /no_exec


REM Disco_C
	echo.
	echo # - - - - - - - - - - - - - - - - - - - - - - - - - #
	echo #                COPIA DO DISCO D                   #
	echo # - - - - - - - - - - - - - - - - - - - - - - - - - #
	echo.
		CHCP 1252  >NUL
			start FastCopy\%fastcopy%  /cmd=diff /exclude="System Volume Information\; Config.Msi\; inetpub\; Intel\; Recovery\; PerfLogs\; ProgramData\; Windows\; Users\; *.sys; MSOCache\; $Recycle.Bin\; Windows\; Users\; *.sys; MSOCache\; $Recycle.Bin\; System Volume Information\; $WINDOWS.~BT\; autoexec.bat; Qoobox\; System Volume Information\; Config.Msi\; inetpub\; Intel\; Recovery\; PerfLogs\; *.sys; MSOCache\; $Recycle.Bin\;" /logfile=FastCopy\Log\nome-bkp.log /speed=512 /bufsize=256 /error_stop=FALSE /force_start /skip_empty_dir=FALSE /acl=FALSE /verify=FALSE /estimate %disco-d%:\ /to="backup\%nome-bkp%"

REM Compactar e Enviar Relatorio
	echo.
	echo # - - - - - - - - - - - - - - - - - - - - - - - - - #
	echo #           COMPACTAR E ENVIAR RELATORIO            #
	echo # - - - - - - - - - - - - - - - - - - - - - - - - - #
	echo.
	call \Scripts\enviar-relatorio\relatorio.bat
	echo.
	echo # - - - - - - - - - - - - - - - - - - - - - - - - - #
	echo #               RELATORIO FINALIZADO                #
	echo # - - - - - - - - - - - - - - - - - - - - - - - - - #
	echo. 

