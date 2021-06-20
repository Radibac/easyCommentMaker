rem resetName.bat

setlocal enabledelayedexpansion
cd /d %~dp0
set keyword=TYPED
for /f "tokens=*" %%i in ('dir /b ^| findstr /i "%keyword%"') do (
set a=%%i
ren "!a!" "!a:%keyword%=!"
)