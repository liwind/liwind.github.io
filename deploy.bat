@echo off
:: blog deploy

set /p isclean=[when modified hexo config] hexo clean cache? (y/n): 
if /i "%isclean%"=="y" (call hexo clean)

call hexo generate
call hexo deploy

echo.
echo !!! successfully deploy blog !!!