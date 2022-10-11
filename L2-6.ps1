#System Admin Lab 2
#Question 6
$exist = Test-Path -Path .\text.txt -PathType Leaf
#Write-Host $exist
if($exist -eq $true)
{
    $text = "it exists"
} 
else
{
    $text = "it doesn't exist"
}

$text | Out-File  .\log.txt
#$text | Out-File C:\Users\Bradl\pshell\log.txt