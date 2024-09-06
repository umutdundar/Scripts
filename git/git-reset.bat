@echo on

echo for /f %%f in ('dir /ad /b .\') do (cd /d .\%%f & call git reset head --hard & call git pull & cd .. & echo. )

rem for /f %%f in ('dir /ad /b .\') do (echo %%f & cd /d .\%%f & call git pull & cd .. & echo. )

rem call git reset --hard HEAD & call git clean -xffd & call git pull

call git reset --hard HEAD
call git clean -xffd
call git pull

