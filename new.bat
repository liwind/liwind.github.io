@echo off
:: use vs code to edit markdown

set /p title=input article title (no spaces): 

call git pull origin source
echo.
echo !!! pull github blog source to local !!!

call hexo new "%title%"
call code "source/_posts/%title%.md"