cd\
echo "List of users in Administrators Group" >>C:\%computername%_New.txt
echo "----------------------------------------------------------------------------------" >>C:\%computername%_New.txt
net localgroup "administrators" >>C:\%computername%_New.txt
echo "----------------------------------------------------------------------------------" >>C:\%computername%_New.txt
echo "List of users in Remote Desktop Users Group" >>C:\%computername%_New.txt
echo "----------------------------------------------------------------------------------" >>C:\%computername%_New.txt
net localgroup "remote desktop users" >>C:\%computername%_New.txt
echo "Script is created by Midhun Ps" >>C:\%computername%_New.txt
echo "----------------------------------------------------------------------------------" >>C:\%computername%_New.txt

wmic product get /format:csv > Software_%Computername%.csv


