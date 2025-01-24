param(
    [parameter(Mandatory = $false)]
    [string]$License,
    [parameter(Mandatory = $false)]
    [string]$model 
)

Write-Output "Lemon First automation script run..."

Set-ExecutionPolicy RemoteSigned -Scope Process -Force

& .\LTA\LemonTree.Automation.exe consistencycheck --model $model --license $License

Write-Output "Lemon Tree script end..."
# Exit with success code
exit 0
