@echo off

rem for /f %%f in ('dir /ad /b .\') do (cd /d .\%%f & call git reset head --hard & call git pull & cd ..)
rem git rebase

for /f %%f in ('dir /ad /b .\') do (echo %%f & cd /d .\%%f & call git reset --hard& call git pull --rebase& cd .. & echo. )
