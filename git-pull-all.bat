@echo off

rem for /f %%f in ('dir /ad /b .\') do (cd /d .\%%f & call git reset head --hard & call git pull & cd ..)

for /f %%f in ('dir /ad /b .\') do (echo %%f & cd /d .\%%f & call git pull & cd ..)
