@echo off
set folder1="<\\sharepath location>"
set folder2="<\\sharepath location>"
echo "Copying official repository into backup location..."
xcopy /e /i /v /k /y %folder1% %folder2%
echo Completed Successfully at %date% %time%>>output.log
pause