@echo off

echo y | choco install googlechrome

echo y | choco install winrar

echo y | choco install git
echo y | choco install git.install

echo y | choco install jre8


echo y | choco install notepadplusplus.install

echo y | choco install vlc

echo y | choco install putty.install

echo y | choco install openssh

echo y | choco install python2

echo y | choco install python3

echo y | choco install make

cd /d "%~dp0"
echo Uninstalling Cortana...
CLS
install_wim_tweak.exe /o /l
install_wim_tweak.exe /o /c Microsoft-Windows-Cortana /r
install_wim_tweak.exe /h /o /l
echo Cortana should be uninstalled. Please reboot Windows 10.
pause


exit