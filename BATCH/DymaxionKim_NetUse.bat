title DymaxionKim_NetUse
REM 2017-03-04
REM by Dymaxion.Kim@gmail.com

net use /delete *
@echo on

REM If you connect E: drive on Network-Drive, Please copy this file into c: drive, and run this script as Administrator.
REM You change "\\iptime\hdd3" to your own path.
set USER=dong
set PASSWD=2959
net use E: \\iptime\hdd3 %PASSWD% /user:%USER% /persistent:no

