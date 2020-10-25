#written by Ibrahim Musaddequr Rahman, compares current users with a file

#read text file, assign list to $legalUsers variable
$legalUsers = Get-Content -Path .\authorizedUsers.txt

#iterate through current users on system, output the names of any that aren't in the list of legalUsers
foreach($user in Get-LocalUser){
    if($legalUsers -notcontains $user.name){
        Write-Output $user.name;
    }
} 