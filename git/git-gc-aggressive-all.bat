@echo off
for /f %%f in ('dir /ad /b .\') do (
echo %%f
cd /d .\%%f
call git repack -a -d --depth=1
call git gc --aggressive
cd ..
echo.)
