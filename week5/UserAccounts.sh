#!/bin/bash
#CREATED BY: Christopher Chong
#DATE CREATED: 11AUG2023
#DATE LAST MODIFIED: 11AUG2023 

      
#This is the beginning of the awk script.
#It includes the File Separator.
#Set each column heading as a variable and call on it, to be able to add buffer to the column.   
#Filter for only "/bin/bash" usinf IF Statement. 
awk 'BEGIN { 
      
    FS=":";
    USERNAME="Username";
    USERID="UserID";
    GROUPID="GroupID";
    HOME="Home";
    SHELL="Shell";
      
    print "_______________________________________________________________________________________________________________"; 
      
    printf("| \033[34m%-20s\033[0m | \033[34m%-5s\033[0m | \033[34m%-7s\033[0m  | \033[34m%-35s\033[0m  | \033[34m%-25s\033[0m |\n", USERNAME, USERID, GROUPID, HOME, SHELL); 
    printf("| \033[34m%-20s\033[0m | \033[34m%-6s\033[0m | \033[34m%-7s\033[0m  | \033[34m%-35s\033[0m  | \033[34m%-25s\033[0m |\n", "", "", "", "", ""); 
    print "|______________________|________|__________|______________________________________|___________________________|";  
} 
      
{ 
    if ($7 =="/bin/bash")
        printf("| \033[33m%-20s\033[0m | \033[35m%-6s\033[0m | \033[35m%-8s\033[0m | \033[35m%-36s\033[0m | \033[35m%-25s\033[0m |\n", $1, $3, $4, $6, $7); 
      
} 
     
END { 
      
    print("_______________________________________________________________________________________________________________"); 
      
}' /etc/passwd