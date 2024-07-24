# Copy files to correct locations in prior to sysprep
#Write-Host "Copying UK auto unattend file" -ForegroundColor Green
#New-Item -Path 'C:\ProgramData\Microsoft\Windows\Start Menu\Programs\StartUp' -ItemType 'Directory' -Force
Set-item WSMAN:\localhost\client\auth\credssp -value $true
Set-item WSMAN:\localhost\service\auth\credssp -value $true
#Copy-Item -Path 'a:\winrm.cmd' -Destination 'C:\ProgramData\Microsoft\Windows\Start Menu\Programs\StartUp'
New-Item -Path 'C:\temp' -ItemType 'Directory' -Force
Copy-Item -Path 'a:\winrmansible.ps1' -Destination 'C:\temp'
New-Item -Path 'C:\Windows\Temp' -ItemType 'Directory' -Force
Copy-Item -Path 'a:\configureforansible.ps1' -Destination 'C:\Windows\Temp'

