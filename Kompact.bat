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
ECHO  Type the location where the files are decompressed. 
ECHO.
ECHO  Ex: Script
ECHO.
ECHO  If the folder is in the same place this file. 
ECHO.
set /p _file= Folder: 
cls
ECHO.
ECHO.
ECHO  Now type the name of the new file .Kom! 
ECHO.
ECHO  Note: No need to type '.Kom' extension name at end of the file. 
ECHO.
ECHO.
set /p _file2= File Name: 
cls
ECHO.
ECHO.
ECHO  Creating file ... 
ping -n 1 localhost >nul
cls
kompact_new.py --in "%_file%" --out "%_file2%.kom"
goto _created
:_created
ping -n 3 ping localhost >nul
cls