@ECHO Off
REM BACKUP FASTCOPY
REM -
REM ORIGEM: Usuarios, Disco C
REM -
REM -
REM Escolha a Unidade
	cls
	echo.
	echo # - - - - - - - - - - - - - - - - - - - - - - - - - #
	echo #                ESCOLHA UNIDADE DO WINDOWS        #
	echo # - - - - - - - - - - - - - - - - - - - - - - - - - #
	echo.
		set /p windows="Unidade do Windows: " 
		echo %windows%
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


REM usuarios
	cls
	echo.
	echo # - - - - - - - - - - - - - - - - - - - - - - - - - #
	echo #                COPIA DOS USUARIOS                 #
	echo # - - - - - - - - - - - - - - - - - - - - - - - - - #
	echo.
		CHCP 1252  >NUL
			start FastCopy\%fastcopy%  /cmd=diff /exclude="ntuser.*; Default\; All Users\; Default User\; Todos os Usuários\; Usuário Padrão\; Temp\; MicrosoftEdge\; Publishers\; Packages\; PlaceholderTileLogoFolder\; Internet Explorer\; Windows\; Network\; WinRAR\; Sun\; Ambiente de Impressão\; Ambiente de Rede\; Comms\; AppData\Local\Microsoft\Office\; AppData\Local\Microsoft\Media Player\; AppData\Local\Microsoft\OneDrive\; AppData\Local\Adobe\Acrobat\; AppData\Local\D3DSCache\; AppData\Local\Adobe\AIR\; AppData\Local\ConnectedDevicesPlatform\; AppData\Local\Microsoft\input\; AppData\Local\Microsoft\Feeds\; AppData\Local\Microsoft\WindowsApps\; Windows Sidebar\; \Adobe\Acrobat\DC\; \DC\Acrobat\; CryptnetUrlCache\; Macromedia\; TokenBroker\; Dados de Aplicativos\;" /logfile=FastCopy\Log\usuarios.log /speed=512 /bufsize=256 /error_stop=FALSE /skip_empty_dir=FALSE /force_start /acl=FALSE  /force_start /verify=FALSE /estimate /reparse %windows%:\Users /to="backup\usuarios"
REM Disco_C
	echo.
	echo # - - - - - - - - - - - - - - - - - - - - - - - - - #
	echo #                COPIA DO DISCO C                   #
	echo # - - - - - - - - - - - - - - - - - - - - - - - - - #
	echo.
		CHCP 1252  >NUL
			start FastCopy\%fastcopy%  /cmd=diff /exclude="Program Files\; Program Files (x86)\; Internet Explorer\; Java\; Kaspersky Lab\; K-Lite Codec Pack\;Microsoft Analysis Services\; Microsoft Office\; Microsoft Silverlight\; Microsoft.NET\; Microsoft SQL Server\; Mozilla Firefox\; Notepad++\; NVIDIA Corporation\; PDF Architect 6\; PDF Architect 6 Manager\; Real Alternative\; Reference Assemblies\; Skype\; Windows Defender\; Windows Defender Advanced Threat Protection\; Windows Mail\; Windows Media Player\; Windows Multimedia Platform\; windows nt\; Windows Photo Viewer\; Windows Portable Devices\; PDFCreator\; WindowsPowerShell\; Adobe\; ASUS\; INNERbit Informática Ltda\; Windows Security\; CCleaner\; Intel\; internet explorer\; Windows Security\; PuTTY\; WinRAR\; System Volume Information\; Config.Msi\; inetpub\; Intel\; Recovery\; PerfLogs\; ProgramData\; Windows\; Users\; *.sys; MSOCache\; $Recycle.Bin\; Windows\; Users\; *.sys; MSOCache\; $Recycle.Bin\; System Volume Information\; Windows.old\; AppData\; $WINDOWS.~BT\; autoexec.bat; ProgramData\; Qoobox\; System Volume Information\; Config.Msi\; inetpub\; Intel\; Recovery\; PerfLogs\; ProgramData\; Windows\; Users\; *.sys; MSOCache\; $Recycle.Bin\; Windows.old\; Internet Explorer\; Java\;" /logfile=FastCopy\Log\disco-c.log /speed=512 /bufsize=256 /error_stop=FALSE /force_start /skip_empty_dir=FALSE /acl=FALSE /verify=FALSE /estimate %windows%:\ /to="backup\disco-c"
	pause
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

