REM usuarios

CHCP 1252  >NUL
start FastCopy\FastCopyx64.exe  /no_exec /cmd=diff /exclude="ntuser.*; Default\; All Users\; Default User\; Todos os Usuários\; Usuário Padrão\; Temp\; MicrosoftEdge\; Publishers\; Packages\; PlaceholderTileLogoFolder\; Internet Explorer\; Windows\; Network\; WinRAR\; Sun\; Ambiente de Impressão\; Ambiente de Rede\; Comms\; AppData\Local\Microsoft\Office\; AppData\Local\Microsoft\Media Player\; AppData\Local\Microsoft\OneDrive\; AppData\Local\Adobe\Acrobat\; AppData\Local\D3DSCache\; AppData\Local\Adobe\AIR\; AppData\Local\ConnectedDevicesPlatform\; AppData\Local\Microsoft\input\; AppData\Local\Microsoft\Feeds\; AppData\Local\Microsoft\WindowsApps\; Windows Sidebar\; \Adobe\Acrobat\DC\; \DC\Acrobat\; CryptnetUrlCache\; Macromedia\; TokenBroker\; Dados de Aplicativos\;" /logfile=FastCopy\Log\usuarios.log /utf8 /speed=512 /bufsize=256 /error_stop=FALSE /skip_empty_dir=FALSE /force_start /acl=FALSE /force_start /verify=FALSE /estimate /reparse C:\Users /to="backup\usuarios"

REM Disco_C

start FastCopy\FastCopyx64.exe  /no_exec /cmd=diff /exclude="Program Files\; Program Files (x86)\; Internet Explorer\; Java\; Kaspersky Lab\; K-Lite Codec Pack\;Microsoft Analysis Services\; Microsoft Office\; Microsoft Silverlight\; Microsoft.NET\; Microsoft SQL Server\; Mozilla Firefox\; Notepad++\; NVIDIA Corporation\; PDF Architect 6\; PDF Architect 6 Manager\; Real Alternative\; Reference Assemblies\; Skype\; Windows Defender\; Windows Defender Advanced Threat Protection\; Windows Mail\; Windows Media Player\; Windows Multimedia Platform\; windows nt\; Windows Photo Viewer\; Windows Portable Devices\; PDFCreator\; WindowsPowerShell\; Adobe\; ASUS\; INNERbit Informática Ltda\; Windows Security\; CCleaner\; Intel\; internet explorer\; Windows Security\; PuTTY\; WinRAR\; System Volume Information\; Config.Msi\; inetpub\; Intel\; Recovery\; PerfLogs\; ProgramData\; Windows\; Users\; *.sys; MSOCache\; $Recycle.Bin\; Windows\; Users\; *.sys; MSOCache\; $Recycle.Bin\; System Volume Information\; Windows.old\; AppData\; $WINDOWS.~BT\; autoexec.bat; ProgramData\; Qoobox\; System Volume Information\; Config.Msi\; inetpub\; Intel\; Recovery\; PerfLogs\; ProgramData\; Windows\; Users\; *.sys; MSOCache\; $Recycle.Bin\; Windows.old\; Internet Explorer\; Java\;" /logfile=FastCopy\Log\bkp-disco-c.log /speed=512 /bufsize=256 /error_stop=FALSE /force_start /skip_empty_dir=FALSE /acl=FALSE /verify=FALSE /estimate C:\ /to="backup\disco-c"

REM Disco_D

start FastCopy\FastCopyx64.exe  /no_exec /cmd=diff /exclude="Windows\; *.sys; MSOCache\; $Recycle.Bin\; System Volume Information\; Windows.old\; AppData\; $WINDOWS.~BT\; autoexec.bat;" /logfile=FastCopy\Log\bkp-disco-d.log /speed=512 /bufsize=256 /skip_empty_dir=FALSE /error_stop=FALSE /force_start /acl=FALSE /verify=FALSE /estimate D:\ /to="backup\disco-d"

REM Disco_E

start FastCopy\FastCopyx64.exe  /no_exec /cmd=diff /exclude="Windows\; *.sys; MSOCache\; $Recycle.Bin\; System Volume Information\; Windows.old\; AppData\; $WINDOWS.~BT\; autoexec.bat;" /logfile=FastCopy\Log\bkp-disco-e.log /speed=512 /bufsize=256 /skip_empty_dir=FALSE /error_stop=FALSE /force_start /acl=FALSE /verify=FALSE /estimate E:\ /to="backup\disco-e"

REM Disco_F

start FastCopy\FastCopyx64.exe  /no_exec /cmd=diff /exclude="Windows\; *.sys; MSOCache\; $Recycle.Bin\; System Volume Information\; Windows.old\; AppData\; $WINDOWS.~BT\; autoexec.bat;" /logfile=FastCopy\Log\bkp-disco-f.log /speed=512 /bufsize=256 /skip_empty_dir=FALSE /error_stop=FALSE /force_start /acl=FALSE /verify=FALSE /estimate F:\ /to="backup\disco-f"

REM Arq.Prog_x86


start FastCopy\FastCopyx64.exe  /no_exec /cmd=diff /exclude="Internet Explorer\; Java\; Kaspersky Lab\; K-Lite Codec Pack\;Microsoft Analysis Services\; Microsoft Office\; Microsoft Silverlight\; Microsoft.NET\; Microsoft SQL Server\; Mozilla Firefox\; Notepad++\; NVIDIA Corporation\; PDF Architect 6\; PDF Architect 6 Manager\; Real Alternative\; Reference Assemblies\; Skype\; Windows Defender\; Windows Defender Advanced Threat Protection\; Windows Mail\; Windows Media Player\; Windows Multimedia Platform\; windows nt\; Windows Photo Viewer\; Windows Portable Devices\; PDFCreator\; WindowsPowerShell\; Adobe\; ASUS\; INNERbit Informática Ltda\; Windows Security\; CCleaner\; Intel\; internet explorer\; Windows Security\; PuTTY\; WinRAR\; System Volume Information\; Config.Msi\; inetpub\; Intel\; Recovery\; PerfLogs\; ProgramData\; Windows\; Users\; *.sys; MSOCache\; $Recycle.Bin\; Windows\; Users\; *.sys; MSOCache\; $Recycle.Bin\; System Volume Information\; Windows.old\; AppData\; $WINDOWS.~BT\; autoexec.bat; ProgramData\; Qoobox\; System Volume Information\; Config.Msi\; inetpub\; Intel\; Recovery\; PerfLogs\; ProgramData\; Windows\; Users\; *.sys; MSOCache\; $Recycle.Bin\; Windows.old\; Internet Explorer\; Java\;" /logfile=FastCopy\Log\bkp-arq.progx86.log /speed=512 /bufsize=256 /error_stop=FALSE /skip_empty_dir=FALSE /force_start /acl=FALSE /verify=FALSE /estimate "C:\Program Files (x86)" /to="backup\arq.prog(x86)"

REM Arq.Prog-x64

start FastCopy\FastCopyx64.exe  /no_exec /cmd=diff /exclude="Internet Explorer\; Java\; Kaspersky Lab\; K-Lite Codec Pack\;Microsoft Analysis Services\; Microsoft Office\; Microsoft Silverlight\; Microsoft.NET\; Microsoft SQL Server\; Mozilla Firefox\; Notepad++\; NVIDIA Corporation\; PDF Architect 6\; PDF Architect 6 Manager\; Real Alternative\; Reference Assemblies\; Skype\; Windows Defender\; Windows Defender Advanced Threat Protection\; Windows Mail\; Windows Media Player\; Windows Multimedia Platform\; windows nt\; Windows Photo Viewer\; Windows Portable Devices\; PDFCreator\; WindowsPowerShell\; Adobe\; ASUS\; INNERbit Informática Ltda\; Windows Security\; CCleaner\; Intel\; internet explorer\; Windows Security\; PuTTY\; WinRAR\; System Volume Information\; Config.Msi\; inetpub\; Intel\; Recovery\; PerfLogs\; ProgramData\; Windows\; Users\; *.sys; MSOCache\; $Recycle.Bin\; Windows\; Users\; *.sys; MSOCache\; $Recycle.Bin\; System Volume Information\; Windows.old\; AppData\; $WINDOWS.~BT\; autoexec.bat; ProgramData\; Qoobox\; System Volume Information\; Config.Msi\; inetpub\; Intel\; Recovery\; PerfLogs\; ProgramData\; Windows\; Users\; *.sys; MSOCache\; $Recycle.Bin\; Windows.old\; Internet Explorer\; Java\;" /logfile=FastCopy\Log\bkp-arq.progx64.log /speed=512 /bufsize=256 /error_stop=FALSE /skip_empty_dir=FALSE /force_start /acl=FALSE /verify=FALSE /estimate "C:\Program Files" /to="backup\arq.prog"


REM System32

start FastCopy\FastCopyx64.exe /no_exec /cmd=diff /exclude= /logfile=FastCopy\Log\system32.log /utf8 /speed=512 /bufsize=256 /error_stop=FALSE /skip_empty_dir=FALSE /force_start /acl=FALSE /force_start /verify=FALSE /estimate "C:\windows\system32" /to="backup\system32"

REM ProgramData

start FastCopy\FastCopyx64.exe  /no_exec /cmd=diff /exclude= /logfile=FastCopy\Log\bkp-programdata.log /speed=512 /bufsize=256 /error_stop=FALSE /skip_empty_dir=FALSE /acl=FALSE /verify=FALSE /estimate "C:\ProgramData\" /to="backup\programdata"
