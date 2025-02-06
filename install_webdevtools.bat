@echo off
SETLOCAL

:: URLs
SET VSCODE_URL="https://code.visualstudio.com/sha/download?build=stable&os=win32-x64-user"
SET NODEJS_URL="https://nodejs.org/dist/v18.17.1/node-v18.17.1-x64.msi"
SET GIT_URL=https://github.com/git-for-windows/git/releases/download/v2.47.1.windows.2/Git-2.47.1.2-64-bit.exe

:: VSCode
echo install Visual Studio Code...
echo.
curl -L -o vscode-installer.exe %VSCODE_URL%
start /wait vscode-installer.exe /silent /mergetasks=!runcode
del vscode-installer.exe

:: Node.js
echo install Node.js...
echo.
curl -L -o nodejs-installer.msi %NODEJS_URL%
start /wait msiexec /i nodejs-installer.msi /quiet
del nodejs-installer.msi

:: Git
echo install  Git...
echo.
curl -L -o git-installer.exe %GIT_URL%
start /wait git-installer.exe /VERYSILENT /NORESTART
del git-installer.exe

:: done
echo done
echo.
pause
ENDLOCAL
