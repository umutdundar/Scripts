Clear-History
Get-PSReadlineOption | select -expand historysavepath | Remove-Item  -whatif
