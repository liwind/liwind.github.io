@echo off
:: push blog source to github

set /p msg=input commit message : 

call git add -A
call git commit -m "%msg%"
call git push origin source

echo.
echo !!! push blog source to github !!!