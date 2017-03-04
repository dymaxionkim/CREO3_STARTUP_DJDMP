title DymaxionKim_Settup
REM 2017-03-04
REM by Dymaxion.Kim@gmail.com

@echo on

REM Replace to your path.
REM  StartupPath : Where exists 'config.pro' file.
REM  ParametricPath : Where exists 'parametric.exe' and 'purge.bat' file.
setx StartupPath "E:\GrabCAD\CREO3_STARTUP_DJDMP"
setx ParametricPath "C:\PTC\Creo 3.0\M010\Parametric\bin"

REM Icon
copy DymaxionKim_Logo.ico C:%HomePath%\Pictures\DymaxionKim_Logo.ico

REM Purge Command in Context Menu
reg add "HKEY_CLASSES_ROOT\Folder\shell\D1_Purge" /ve /d "D1_Purge"
reg add "HKEY_CLASSES_ROOT\Folder\shell\D1_Purge" /v Icon /t REG_EXPAND_SZ /d C:%HomePath%\Pictures\DymaxionKim_Logo.ico
reg add "HKEY_CLASSES_ROOT\Folder\shell\D1_Purge\command" /ve /d "C:\Windows\system32\cmd.exe /C cd /D %%1 & \"%ParametricPath%\purge.bat\""

REM DymaxionKim_PurgeClear Command in Context Menu
reg add "HKEY_CLASSES_ROOT\Folder\shell\D2_PurgeClear" /ve /d "D2_PurgeClear"
reg add "HKEY_CLASSES_ROOT\Folder\shell\D2_PurgeClear" /v Icon /t REG_EXPAND_SZ /d C:%HomePath%\Pictures\DymaxionKim_Logo.ico
reg add "HKEY_CLASSES_ROOT\Folder\shell\D2_PurgeClear\command" /ve /d "C:\Windows\system32\cmd.exe /C cd /D %%1 & \"%StartupPath%\BATCH\DymaxionKim_PurgeClear.bat\""

REM DymaxionKim_drw2pdfdxfdwg Command in Context Menu
reg add "HKEY_CLASSES_ROOT\Folder\shell\D3_drw2pdfdxfdwg" /ve /d "D3_drw2pdfdxfdwg"
reg add "HKEY_CLASSES_ROOT\Folder\shell\D3_drw2pdfdxfdwg" /v Icon /t REG_EXPAND_SZ /d C:%HomePath%\Pictures\DymaxionKim_Logo.ico
reg add "HKEY_CLASSES_ROOT\Folder\shell\D3_drw2pdfdxfdwg\command" /ve /d "C:\Windows\system32\cmd.exe /C cd /D %%1 & \"%StartupPath%\BATCH\DymaxionKim_drw2pdfdxfdwg.bat\" %%1"

mkdir E:\trail

