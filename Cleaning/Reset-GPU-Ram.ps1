Get-PnpDevice -FriendlyName "DeviceName" | Disable-PnpDevice -confirm:$false
Sleep -Seconds 5
Get-PnpDevice -FriendlyName "DeviceName" | Enable-PnpDevice -confirm:$false
