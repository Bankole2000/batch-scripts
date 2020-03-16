@ECHO OFF
SET home=''
SET drive=''
IF "%1"=="scripts" GOTO scripts
IF "%1"=="videos" GOTO videos
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
IF "%1"=="mws" GOTO mws
IF "%1"=="workmusic" GOTO workmusic
IF "%1"=="labview" GOTO labview
IF "%1"=="wireshark" GOTO wireshark
IF "%1"=="hosts" GOTO hosts
IF "%1"=="editxampp" GOTO editxampp
IF "%1"=="help" GOTO help

:help 
  echo.
  echo ======== go.bat script commands =========
  echo.
  echo   go scripts -- go to C:\apps\scripts
  echo   go videos -- go to C:\projects\resources\videos
  echo   go projects "any" -- go to C:\xampp\htdocs\projects\"any"
  echo   go home "any" -- go to C:\Users\USERPC\"any"
  echo   go work "any" -- go to C:\Users\USERPC\Desktop\work\"any"
  echo   go drive "any" "any2" -- go to "any":\"any2"
  echo   go explore "any" "any2" -- go to C:\"any" and open in explorer
  echo   go kill "any" -- taskkill /im "any".exe /t /f
  echo   go getpic "any" -- copy sign in image to C:\Users\USERPC\Pictures\images\"any"
  echo   go system "any" -- go to C:\Windows\system32
  echo   go workmusic "any" -- go to C:\Users\USERPC\Videos\workmusic and open playlist.xspf
  echo   go learning "any" -- go to C:\projects\learning\"any"
  echo   go pirple "any" -- go to C:\projects\learning\pirple\"any"
  echo   go pluralsight "any" -- go to C:\projects\learning\pluralsight\"any"
  echo   go mws "any" -- go to C:\projects\learning\google\MWS and open chrome webpage
  echo   go hosts -- edit C:\Windows\System32\Drivers\etc\hosts in hosts
  echo   go editxampp "any" -- edit C:\xampp\apache\conf\httpd.conf in nano
  echo.
  GOTO end

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

:mws
  cd C:\projects\learning\google\MWS
  chrome https://developers.google.com/certification/mobile-web-specialist/study-guide/basic-layout
  GOTO end

:learning
  cd C:\projects\learning\%2
  GOTO end  

:videos
  cd C:\projects\resources\videos
  GOTO end

:kill 
  taskkill /im %2.exe /t /f
  IF "%2"=="explorer" (start explorer.exe)
  pause
  clear
  GOTO end

:labview
  explorer "%programfiles%\National Instruments\LabVIEW 2019\"
  GOTO end

:getpic
  xcopy %localAppData%\Packages\Microsoft.Windows.ContentDeliveryManager_cw5n1h2txyewy\LocalState\Assets %USERPROFILE%\Pictures\images /D /Q
  cd %USERPROFILE%\Pictures\images
  ren *.* *.jpg
  explorer "%USERPROFILE%\Pictures\images"
  GOTO end

:workmusic
  open %USERPROFILE%\Videos\workmusic\playlist.xspf
  cd %USERPROFILE%\Videos\workmusic\
  GOTO end

:system
  cd C:\WINDOWS\system32\
  GOTO end

:wireshark
  cd "C:\Program Files\Wireshark"
  GOTO end

:hosts
  nano C:\Windows\System32\Drivers\etc\hosts
  GOTO end

:editxampp
  nano C:\xampp\apache\conf\httpd.conf
  GOTO end

:end

