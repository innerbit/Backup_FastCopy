###Restaurar-Backup

REM Escolha a Unidade
	cls
	echo.
	echo # - - - - - - - - - - - - - - - - - - - - - - - - - #
	echo #     ESCOLHA UNIDADE PARA RESTURAR OS DADOS        #
	echo # - - - - - - - - - - - - - - - - - - - - - - - - - #
	echo.
		set /p disco="Unidade do disco: " 
		echo %disco%
CHCP 1252  >NUL
start FastCopy\%fastcopy% /no_exec /cmd=diff /exclude="arq.prog(x86)\; arq.prog\; system32\; programdata\;" /logfile=FastCopy\Log\restauracao-backup.log /utf8 /speed=512 /bufsize=256 /error_stop=FALSE /skip_empty_dir=FALSE /force_start /acl=FALSE /force_start /verify=FALSE /estimate /to=%disco%:\