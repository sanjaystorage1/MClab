@echo off
cls
echo ------------------------------------------------------------------------------------------
echo made by sanjaybyranna
echo ------------------------------------------------------------------------------------------
echo.
set /p answer1= Enter the experiment number : 
echo.
echo ------------------------------------------------------------------------------------------
echo.
set /p answer2= Do a naming cermony for the file with .asm Extension : 
echo.
echo U File is being downloaded ..................
echo.
echo ------------------------------------------------------------------------------------------
cls
echo ------------------------------------------------------------------------------------------
echo.
curl -o %answer2% https://raw.githubusercontent.com/sanjaystorage1/MClab/main/%answer1%.asm
echo.
echo ------------------------------------------------------------------------------------------
echo.
pause
cls

echo ------------------------------------------------------------------------------------------
echo.
echo Check the folder whether the file u named is there are NOT
echo.
echo If not exist then that file is not present in our server please request the owner (sanjaybyranna).
 
echo. 
echo (or) try typing if ur a Human and have any one of the two GOD given hands.
echo.
echo ------------------------------------------------------------------------------------------
echo.
TIMEOUT /T 60
