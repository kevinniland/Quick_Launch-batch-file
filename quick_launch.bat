:: Prevents the displaying of results of the commands in the prompt
@echo off

:: Clears the screen
cls

:: Displays the list
:start

:: Creates empty line
echo.

:: Menu
echo 1. Object Orientated Programming
echo 2. Emerging Technologies
echo 3. Distributed Systems
echo 4. Mobile Applications Development 3
echo 5. Exit
echo.
echo.


:: Set the variable name that is used in the proceeding line
set /p x=Pick:

:: Determines what commands/applications will be run/opened i.e. if the user enters 1, all the commands/applications listed under Item_1 will be ran/opened
IF '%x%' == '%x%' GOTO Item_%x%

:: The above two lines should NOT be changed

:Item_1
start /MIN /DC:\Users\kevin\java-2019-09\eclipse eclipse.exe
start /MIN /D"C:\Program Files\Mozilla Firefox" firefox.exe https://learnonline.gmit.ie/course/view.php?id=945

:: Goes to start of menu again, allowing the user to make another selection
GOTO Start

:Item_2
start /MIN /D"C:\Program Files\Microsoft VS Code" Code.exe
start /MIN /DD:\Cmder Cmder.exe
start /MIN /D"C:\Program Files\Mozilla Firefox" firefox.exe https://learnonline.gmit.ie/course/view.php?id=135
GOTO Start

:Item_3
start /MIN /DC:\Users\kevin\eclipse\eclipse eclipse.exe
start /MIN /D"C:\Program Files\Mozilla Firefox" firefox.exe https://learnonline.gmit.ie/course/view.php?id=614
GOTO Start

:Item_4
start /MIN /D"D:\Unity 2019\Unity Hub" "Unity Hub.exe"
GOTO Start

:: Exits the batch file
:Item_5
exit