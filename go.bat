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

:scripts
  cd C:\apps\scripts
  GOTO end

:work
  cd C:\Users\USERPC\Desktop\work
  GOTO end

:projects
  cd C:\xampp\htdocs\projects
  GOTO end

:home
  cd C:\Users\USERPC\%2
  GOTO end

:drive
  cd "%2:\%3"
  GOTO end

:explore
  IF "%2"=="home" (SET home=C:\Users\USERPC\%3)
  IF "%2"=="drive" (SET home=%3:\)
  IF "%2"=="usb" (SET home=%3:\)
  cd %home%%4
  %1r %home%%4
  GOTO end

:kill 
  taskkill /im %2.exe /t /f
  IF "%2"=="explorer" (start explorer.exe)
  pause
  clear
  GOTO end

:getpic
  copy %localAppData%\Packages\Microsoft.Windows.ContentDeliveryManager_cw5n1h2txyewy\LocalState\Assets\ C:\Users\USERPC\Pictures\images\
  cd C:\Users\USERPC\Pictures\images
  ren *.* *.jpg
  explorer "C:\Users\USERPC\Pictures\images"
  clear
  GOTO end

:system
  cd C:\WINDOWS\system32\
  GOTO end

:end

