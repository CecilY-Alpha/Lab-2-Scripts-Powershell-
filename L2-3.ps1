#System Admin Lab 2
#Question 3
$exist = Test-Path -Path .\text.txt -PathType Leaf
#Write-Host $exist
if($exist -eq $true)
{
    Write-Host "it exists"
} 
else
{
    Write-Host "it doesn't exist"
}
