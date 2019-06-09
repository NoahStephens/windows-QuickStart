@echo off

powershell -Set-ExecutionPolicy AllSigned "Start-Process Powershell -Vebrb RunAs"

powershell -@"%SystemRoot%\System32\WindowsPowerShell\v1.0\powershell.exe" -NoProfile -InputFormat None -ExecutionPolicy Bypass -Command "iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))" && SET "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin" "Start-Process Powershell -Vebrb RunAs"
powershell Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Windows-Subsystem-Linux

cd ../src

start src.bat


stop

exit
