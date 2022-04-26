REM Escolha a Unidade
	cls
	echo.
	echo # - - - - - - - - - - - - - - - - - - - - - - - - - #
	echo #                ESCOLHA UNIDADE DO WINDOWS        #
	echo # - - - - - - - - - - - - - - - - - - - - - - - - - #
	echo.
		set /p windows="Unidade do Windows: " 
		echo %windows%


REM usuarios
	echo.
	echo # - - - - - - - - - - - - - - - - - - - - - - - - - #
	echo #                COPIA DOS USUARIOS                 #
	echo # - - - - - - - - - - - - - - - - - - - - - - - - - #
	echo.
		CHCP 1252  >NUL
			start FastCopy\%fastcopy%  /cmd=diff /exclude="ntuser.*; Default\; All Users\; Default User\; Todos os Usuários\; Usuário Padrão\; Temp\; MicrosoftEdge\; Publishers\; Packages\; PlaceholderTileLogoFolder\; Internet Explorer\; Windows\; Network\; WinRAR\; Sun\; Ambiente de Impressão\; Ambiente de Rede\; Comms\; AppData\Local\Microsoft\Office\; AppData\Local\Microsoft\Media Player\; AppData\Local\Microsoft\OneDrive\; AppData\Local\Adobe\Acrobat\; AppData\Local\D3DSCache\; AppData\Local\Adobe\AIR\; AppData\Local\ConnectedDevicesPlatform\; AppData\Local\Microsoft\input\; AppData\Local\Microsoft\Feeds\; AppData\Local\Microsoft\WindowsApps\; Windows Sidebar\; \Adobe\Acrobat\DC\; \DC\Acrobat\; CryptnetUrlCache\; Macromedia\; TokenBroker\; Dados de Aplicativos\;" /logfile=FastCopy\Log\usuarios.log /speed=512 /bufsize=256 /error_stop=FALSE /skip_empty_dir=FALSE /force_start /acl=FALSE /force_start /verify=FALSE /estimate /reparse %windows%:\Users /to="backup\usuarios"

REM Disco_C
	echo.
	echo # - - - - - - - - - - - - - - - - - - - - - - - - - #
	echo #                COPIA DO DISCO C                   #
	echo # - - - - - - - - - - - - - - - - - - - - - - - - - #
	echo.
		start FastCopy\%fastcopy%  /cmd=diff /exclude="Program Files\; Program Files (x86)\; Internet Explorer\; Java\; Kaspersky Lab\; K-Lite Codec Pack\;Microsoft Analysis Services\; Microsoft Office\; Microsoft Silverlight\; Microsoft.NET\; Microsoft SQL Server\; Mozilla Firefox\; Notepad++\; NVIDIA Corporation\; PDF Architect 6\; PDF Architect 6 Manager\; Real Alternative\; Reference Assemblies\; Skype\; Windows Defender\; Windows Defender Advanced Threat Protection\; Windows Mail\; Windows Media Player\; Windows Multimedia Platform\; windows nt\; Windows Photo Viewer\; Windows Portable Devices\; PDFCreator\; WindowsPowerShell\; Adobe\; ASUS\; INNERbit Informática Ltda\; Windows Security\; CCleaner\; Intel\; internet explorer\; Windows Security\; PuTTY\; WinRAR\; System Volume Information\; Config.Msi\; inetpub\; Intel\; Recovery\; PerfLogs\; ProgramData\; Windows\; Users\; *.sys; MSOCache\; $Recycle.Bin\; Windows\; Users\; *.sys; MSOCache\; $Recycle.Bin\; System Volume Information\; Windows.old\; AppData\; $WINDOWS.~BT\; autoexec.bat; ProgramData\; Qoobox\; System Volume Information\; Config.Msi\; inetpub\; Intel\; Recovery\; PerfLogs\; ProgramData\; Windows\; Users\; *.sys; MSOCache\; $Recycle.Bin\; Windows.old\; Internet Explorer\; Java\;" /logfile=FastCopy\Log\bkp-disco-c.log /speed=512 /bufsize=256 /error_stop=FALSE /force_start /skip_empty_dir=FALSE /acl=FALSE /verify=FALSE /estimate %windows%:\ /to="backup\disco-c"
REM Disco_D
	echo.
	echo # - - - - - - - - - - - - - - - - - - - - - - - - - #
	echo #                COPIA DISCO D                 #
	echo # - - - - - - - - - - - - - - - - - - - - - - - - - #
	echo.
		start FastCopy\%fastcopy%  /no_exec /cmd=diff /exclude="Windows\; *.sys; MSOCache\; $Recycle.Bin\; System Volume Information\; Windows.old\; AppData\; $WINDOWS.~BT\; autoexec.bat;" /logfile=FastCopy\Log\bkp-disco-d.log /speed=512 /bufsize=256 /skip_empty_dir=FALSE /error_stop=FALSE /force_start /acl=FALSE /verify=FALSE /estimate D:\ /to="backup\disco-d"
REM Disco_E
	echo.
	echo # - - - - - - - - - - - - - - - - - - - - - - - - - #
	echo #                COPIA DISCO E                 #
	echo # - - - - - - - - - - - - - - - - - - - - - - - - - #
	echo.
		start FastCopy\%fastcopy%  /no_exec /cmd=diff /exclude="Windows\; *.sys; MSOCache\; $Recycle.Bin\; System Volume Information\; Windows.old\; AppData\; $WINDOWS.~BT\; autoexec.bat;" /logfile=FastCopy\Log\bkp-disco-e.log /speed=512 /bufsize=256 /skip_empty_dir=FALSE /error_stop=FALSE /force_start /acl=FALSE /verify=FALSE /estimate E:\ /to="backup\disco-e"

REM Disco_F
	echo.
	echo # - - - - - - - - - - - - - - - - - - - - - - - - - #
	echo #                COPIA DISCO F                 #
	echo # - - - - - - - - - - - - - - - - - - - - - - - - - #
	echo.
		start FastCopy\%fastcopy%  /no_exec /cmd=diff /exclude="Windows\; *.sys; MSOCache\; $Recycle.Bin\; System Volume Information\; Windows.old\; AppData\; $WINDOWS.~BT\; autoexec.bat;" /logfile=FastCopy\Log\bkp-disco-f.log /speed=512 /bufsize=256 /skip_empty_dir=FALSE /error_stop=FALSE /force_start /acl=FALSE /verify=FALSE /estimate F:\ /to="backup\disco-f"

REM Arq.Prog_x86
	echo.
	echo # - - - - - - - - - - - - - - - - - - - - - - - - - #
	echo #                COPIA ARQ-PROG-X86                 #
	echo # - - - - - - - - - - - - - - - - - - - - - - - - - #
	echo.
		start FastCopy\%fastcopy%  /cmd=diff /exclude="Internet Explorer\; Java\; Kaspersky Lab\; K-Lite Codec Pack\;Microsoft Analysis Services\; Microsoft Office\; Microsoft Silverlight\; Microsoft.NET\; Microsoft SQL Server\; Mozilla Firefox\; Notepad++\; NVIDIA Corporation\; PDF Architect 6\; PDF Architect 6 Manager\; Real Alternative\; Reference Assemblies\; Skype\; Windows Defender\; Windows Defender Advanced Threat Protection\; Windows Mail\; Windows Media Player\; Windows Multimedia Platform\; windows nt\; Windows Photo Viewer\; Windows Portable Devices\; PDFCreator\; WindowsPowerShell\; Adobe\; ASUS\; INNERbit Informática Ltda\; Windows Security\; CCleaner\; Intel\; internet explorer\; Windows Security\; PuTTY\; WinRAR\; System Volume Information\; Config.Msi\; inetpub\; Intel\; Recovery\; PerfLogs\; ProgramData\; Windows\; Users\; *.sys; MSOCache\; $Recycle.Bin\; Windows\; Users\; *.sys; MSOCache\; $Recycle.Bin\; System Volume Information\; Windows.old\; AppData\; $WINDOWS.~BT\; autoexec.bat; ProgramData\; Qoobox\; System Volume Information\; Config.Msi\; inetpub\; Intel\; Recovery\; PerfLogs\; ProgramData\; Windows\; Users\; *.sys; MSOCache\; $Recycle.Bin\; Windows.old\; Internet Explorer\; Java\;" /logfile=FastCopy\Log\bkp-arq.progx86.log /speed=512 /bufsize=256 /error_stop=FALSE /skip_empty_dir=FALSE /force_start /acl=FALSE /verify=FALSE /estimate "%windows%:\Program Files (x86)" /to="backup\arq.prog(x86)"
REM Arq.Prog-x64
	echo.
	echo # - - - - - - - - - - - - - - - - - - - - - - - - - #
	echo #                COPIA ARQ-PROG-X64                 #
	echo # - - - - - - - - - - - - - - - - - - - - - - - - - #
	echo.
		start FastCopy\%fastcopy%  /cmd=diff /exclude="Internet Explorer\; Java\; Kaspersky Lab\; K-Lite Codec Pack\;Microsoft Analysis Services\; Microsoft Office\; Microsoft Silverlight\; Microsoft.NET\; Microsoft SQL Server\; Mozilla Firefox\; Notepad++\; NVIDIA Corporation\; PDF Architect 6\; PDF Architect 6 Manager\; Real Alternative\; Reference Assemblies\; Skype\; Windows Defender\; Windows Defender Advanced Threat Protection\; Windows Mail\; Windows Media Player\; Windows Multimedia Platform\; windows nt\; Windows Photo Viewer\; Windows Portable Devices\; PDFCreator\; WindowsPowerShell\; Adobe\; ASUS\; INNERbit Informática Ltda\; Windows Security\; CCleaner\; Intel\; internet explorer\; Windows Security\; PuTTY\; WinRAR\; System Volume Information\; Config.Msi\; inetpub\; Intel\; Recovery\; PerfLogs\; ProgramData\; Windows\; Users\; *.sys; MSOCache\; $Recycle.Bin\; Windows\; Users\; *.sys; MSOCache\; $Recycle.Bin\; System Volume Information\; Windows.old\; AppData\; $WINDOWS.~BT\; autoexec.bat; ProgramData\; Qoobox\; System Volume Information\; Config.Msi\; inetpub\; Intel\; Recovery\; PerfLogs\; ProgramData\; Windows\; Users\; *.sys; MSOCache\; $Recycle.Bin\; Windows.old\; Internet Explorer\; Java\;" /logfile=FastCopy\Log\bkp-arq.progx64.log /speed=512 /bufsize=256 /error_stop=FALSE /skip_empty_dir=FALSE /force_start /acl=FALSE /verify=FALSE /estimate "%windows%:\Program Files" /to="backup\arq.prog"
	pause
REM Compactar e Enviar Relatorio
REM	echo.
REM	echo # - - - - - - - - - - - - - - - - - - - - - - - - - #
REM	echo #           COMPACTAR E ENVIAR RELATORIO            #
REM	echo # - - - - - - - - - - - - - - - - - - - - - - - - - #
REM	echo.
REM		call \Scripts\enviar-relatorio\relatorio.bat
REM	echo.
REM	echo # - - - - - - - - - - - - - - - - - - - - - - - - - #
REM	echo #               RELATORIO FINALIZADO                #
REM	echo # - - - - - - - - - - - - - - - - - - - - - - - - - #
REM	echo. 
