@echo off
color 0A
title GagSec: Drive Storage Increaser/Decreaser (ANY) to 4GB
color A
echo          Storage Increaser By GagSec Team
echo           based on mkdosfs Modification
echo ####################################################
echo ### By Using this app will increase/decrease the ###
echo ###  size of a drive storage device to 4GB.      ###
echo ####################################################
echo.
echo ##################################
echo ### WARNING:                   ###
echo ### USE THIS AT YOUR OWN RISK! ###
echo ##################################
color
pause.
echo.
echo.
cls
echo Input The Drive Name: (ex. "GagSec" without Quotation).
set /p name=
cls
echo Input The Device Letter (ex. "E:" without quotation)
set /p drive=
cls
echo Input The Drive Letter Again (For Verification).
set /p drive1=
If /I %drive% == %drive1% goto gagsec
pause
goto test
:gagsec
cls
color 0C
title Prossesing...
mkdosfs -n %NAME% -v %letter%: 8386900
cls
echo.
color 0A
title Done!
echo Finished!
echo Created By GagSec Team
echo Press Any Key To Continue
pause>nul
goto quit
:test
cls
echo.
echo #######################################################
echo ###                     Error!                      ###
echo ### You entered a different letter the second time. ###
echo ###           Press Any Key To Continue...          ###
echo #######################################################
Pause>nul
:quit
exit