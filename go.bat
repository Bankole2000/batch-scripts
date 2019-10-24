@ECHO OFF
SET home=''
SET drive=''
IF "%1"=="scripts" GOTO scripts
IF "%1"=="work" GOTO work
IF "%1"=="projects" GOTO projects
IF "%1"=="home" GOTO home
IF "%1"=="drive" GOTO drive
IF "%1"=="explore" GOTO explore
IF "%1"=="kill" GOTO kill
IF "%1"=="getpic" GOTO getpic
IF "%1"=="system" GOTO system 
IF "%1"=="pirple" GOTO pirple
IF "%1"=="lambda" GOTO lambda
IF "%1"=="learning" GOTO learning
IF "%1"=="pluralsight" GOTO pluralsight

:scripts
  cd C:\apps\scripts
  GOTO end

:work
  cd %USERPROFILE%\Desktop\work\%2
  GOTO end

:projects
  cd C:\xampp\htdocs\projects\%2
  GOTO end

:home
  cd %USERPROFILE%\%2
  GOTO end

:drive
  cd "%2:\%3"
  GOTO end

:explore
  IF "%2"=="home" (SET home=%USERPROFILE%\%3)
  IF "%2"=="work" (SET home=%USERPROFILE%\Desktop\work\%3)
  IF "%2"=="drive" (SET home=%3:\%4)
  IF "%2"=="usb" (SET home=%3:\)
  IF "%2"=="pirple" (SET home=C:\projects\learning\pirple\%3)
  IF "%2"=="learning" (SET home=C:\projects\learning\%3)
  cd %home%
  %1r %home%
  GOTO end

:pirple
  cd C:\projects\learning\pirple\%2
  GOTO end

:pluralsight
  cd C:\projects\learning\pluralsight\%2
  GOTO end

:lambda
  cd C:\projects\learning\lambda\%2
  GOTO end

:learning
  cd C:\projects\learning\%2
  GOTO end  

:kill 
  taskkill /im %2.exe /t /f
  IF "%2"=="explorer" (start explorer.exe)
  pause
  clear
  GOTO end

:getpic
  xcopy %localAppData%\Packages\Microsoft.Windows.ContentDeliveryManager_cw5n1h2txyewy\LocalState\Assets %USERPROFILE%\Pictures\images /D /Q
  cd %USERPROFILE%\Pictures\images
  ren *.* *.jpg
  explorer "%USERPROFILE%\Pictures\images"
  
  GOTO end

:system
  cd C:\WINDOWS\system32\
  GOTO end

:end

