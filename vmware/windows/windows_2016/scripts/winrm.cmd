@Echo off
setlocal
#"c:\windows\system32\windowspowershell\v1.0\powershell" "c:\temp/winrmansible.ps1"
timeout 15
#del "c:\temp/winrmansible.ps1"
del"%~f0"
