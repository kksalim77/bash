@echo off
for /f "tokens=2 delims==" %%a in ('wmic OS Get localdatetime /value') do set "dt=%%a"
set "YY=%dt:~2,2%" & set "YYYY=%dt:~0,4%" & set "MM=%dt:~4,2%" & set "DD=%dt:~6,2%"
set "HH=%dt:~8,2%" & set "Min=%dt:~10,2%" & set "Sec=%dt:~12,2%"

set "datestamp=%YYYY%%MM%%DD%"
robocopy "C:\Test" "C:\Softwares\%datestamp%" /M /Z /NP /NDL /LOG+:C:\Softwares\log_invoice%datestamp%.txt
forfiles /p  "C:\Softwares" /s /m *.* /D -7 /C "cmd /c del @path"



