@Echo OFF
:_start
cls
color D                                                                                                                                                   
echo   ¦¦  ¦¦                               
echo   ¦¦  ¦¦             ¦¦                
echo   ¦¦¦ ¦¦             ¦¦                
echo    ¦¦ ¦  ¦¦¦¦¦ ¦¦¦¦¦ ¦¦ ¦¦¦¦¦ ¦¦¦¦¦¦   
echo    ¦¦¦¦  ¦¦ ¦¦ ¦¦ ¦¦ ¦¦ ¦¦ ¦¦¦ ¦  ¦¦   
echo    ¦¦¦¦  ¦¦¦¦¦ ¦¦ ¦¦ ¦¦ ¦¦  ¦  ¦¦¦¦¦   
echo     ¦¦¦  ¦¦ ¦¦ ¦¦ ¦¦ ¦¦ ¦¦ ¦¦¦¦¦  ¦¦   
echo     ¦¦   ¦¦¦¦¦ ¦¦ ¦¦ ¦¦ ¦¦¦¦¦ ¦¦¦¦¦¦   
echo                         ¦¦             
echo                         ¦¦                                                                                                                  
ECHO.
ECHO  Type only the file name without the '.Kom' extension name.
ECHO.
echo  What file you want to extract? 
ECHO.
set /p _bt= File Name: 
if "%_bt%" == "%_bt%.kom" goto _error
:_extract
cls
komextract_new.py --in %_bt%.kom --out %_bt%
goto _ok
:_error
cls
ECHO.
ECHO   Do not place a '.Kom' extension name at end of file.
ECHO. 
ECHO   Back to top in 5sec 
ping -n 5 localhost >nul
goto _start
:_ok
ping -n 4 localhost >nul
cls