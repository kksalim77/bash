PsExec.exe \\<Computer_hostname> cmd.exe


REG ADD HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\System\CredSSP\Parameters\ /v AllowEncryptionOracle /t REG_DWORD /d 2
gpupdate /force
Pause