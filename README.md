# Offine-PS-ActiveDirectory-Install
 Install the PowerShell RSAT ActiveDirectory Module Offline

### How to install:
1. [Download the script](https://github.com/simeononsecurity/Offine-PS-ActiveDirectory-Install/archive/master.zip)
2. From the extracted folder, run the following:
 ```powershell
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Force
Unblock-File .\sos-offlinepsadinstall.ps1
 .\sos-offlinepsadinstall.ps1
```
