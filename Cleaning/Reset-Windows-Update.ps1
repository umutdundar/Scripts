Stop-Service -Name wuauserv
Stop-Service -Name bits
Stop-Service -Name cryptsvc
Stop-Service -Name trustedinstaller
Stop-Service -Name appidsvc

Remove-Item HKLM:\Software\Policies\Microsoft\Windows\WindowsUpdate -Recurse

Remove-Item -Recurse -Force C:\Windows\SoftwareDistribution\*.*
Remove-Item -Recurse -Force C:\Windows\System32\CatRoot\*.*

Start-Service -name wuauserv
Start-Service -name bits
Start-Service -name cryptsvc
Start-Service -name trustedinstaller
Start-Service -name appidsvc
