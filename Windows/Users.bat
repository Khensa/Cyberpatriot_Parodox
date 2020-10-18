wmic /output:C:\desktop\useraccounts.txt useraccount get name full
findstr /vig:useraccounts.txt authorizedusers.txt > notAllowed.txt
