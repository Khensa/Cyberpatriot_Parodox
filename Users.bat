wmic /output:C:\desktop\useraccounts.txt useraccount get name full
findstr /vixg:useraccounts.txt authorizedusers.txt > notAllowed.txt
