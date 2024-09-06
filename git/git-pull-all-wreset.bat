@echo off

rem for /f %%f in ('dir /ad /b .\') do (cd /d .\%%f & call git reset head --hard & call git pull & cd .. & echo. )

for /f %%f in ('dir /ad /b .\') do (
	echo %%f
	cd /d .\%%f
	git reset --hard HEAD
	git clean -xffd
	git pull --rebase
	cd ..
	echo. 
)