# CREATED BY: Christopher Chong
# DATE CREATED: 14AUG2023
# DATE LAST MODIFIED: 15AUG2023 

$number= Read-Host -Prompt "Please type a number greater than 5"

while ( [int]$number -lt 5 )
{
    Write-Output "That number i sless than 5!! Try again :("
    $number = Read-Host -Prompt "Please type a number greater than 5"
}
Write-Output "Thasnk you! :) "