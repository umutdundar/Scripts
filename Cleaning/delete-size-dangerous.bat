set "min.size=10240"
rem Danger
pause
rem Danger
pause
rem Danger
pause
for /f  "usebackq delims=;" %%A in (`dir /b /s /A:-D *.*`) do If %%~zA LSS %min.size% del "%%A"
for /f "delims=" %%d in ('dir /s /b /ad ^| sort /r') do rd "%%d"
