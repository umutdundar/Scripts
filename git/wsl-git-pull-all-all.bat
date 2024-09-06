@echo off
rem for /f %%f in ('dir /ad /b .\') do (cd /d .\%%f & call git reset head --hard & call git pull & cd ..)

for /f %%f in ('dir /ad /b .\') do (cd /d .\%%f
    for /f %%g in ('dir /ad /b .\') do (echo %%g & cd /d .\%%g & call wsl git pull & cd .. & echo. )
    cd ..
)
