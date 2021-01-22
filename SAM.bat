RMDIR C:\FlexeraAgent_Wind /S /Q
RMDIR C:\FlexeraAgent /S /Q
xcopy "<\\Sourceoath>" <Destination_path\ /E /I /Y
cd /D C:\FlexeraAgent_Windows 
msiexec /i "FlexNet Inventory Agent.msi" ALLUSERS=1 REBOOT=ReallySuppress /qn