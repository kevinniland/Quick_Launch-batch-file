:: Prevents the displaying of results of the commands in the prompt
@echo off

:: Clears the screen
cls

:: Displays the list
:start

:: Creates empty line
echo.

:: Menu
echo 1. Menu Item 1
echo 2. Menu Item 2
echo 3. Menu Item 3
echo 4. Menu Item 4
echo 5. Exit
echo.
echo.


:: Set the variable name that is used in the proceeding line
set /p x=Pick:

:: Determines what commands/applications will be run/opened i.e. if the user enters 1, all the commands/applications listed under Item_1 will be ran/opened
IF '%x%' == '%x%' GOTO Item_%x%

:: The above two lines should NOT be changed

:Item_1
start /MIN /DC:\application\path eclipse.exe
start /MIN /D"D:\application\path\with\spaces" firefox.exe ENTER WEB ADDRESS HERE (Optional)

:: Goes to start of menu again, allowing the user to make another selection
GOTO Start

:Item_2
start /MIN /D"D:\application\path\with\spaces" Code.exe
start /MIN /DC:\application\path Cmder.exe
start /MIN /D"D:\application\path\with\spaces" firefox.exe ENTER WEB ADDRESS HERE (Optional)
GOTO Start

:Item_3
start /MIN /DC:\application\path eclipse.exe
start /MIN /D"D:\application\path\with\spaces" firefox.exe ENTER WEB ADDRESS HERE (Optional)
GOTO Start

:Item_4
start /MIN /D"D:\application\path\with\spaces" "Unity Hub.exe"
GOTO Start

:: Exits the batch file
:Item_5
exit
