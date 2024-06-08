# Start the WinRM service and enable automatic boot
Set-Service -Name "WinRM" -StartupType Automatic
Start-Service -Name "WinRM"

# Ensure PowerShell remoting is enabled
if (-not (Get-PSSessionConfiguration) -or (-not (Get-ChildItem WSMan:\localhost\Listener))) {
    Enable-PSRemoting -SkipNetworkProfileCheck -Force
}


### how to validate
### go to services and check the services is started and auto i.e., Windows Remote Management
