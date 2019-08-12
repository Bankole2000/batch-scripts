@ECHO OFF
IF "%1"=="" GOTO openchrome
IF "%1"=="web" GOTO openweb
IF "%1"=="xlocal" GOTO xampplocal
IF "%1"=="local" GOTO openlocal
IF "%1"=="search" GOTO opensearch
IF "%1"=="phpmyadmin" GOTO phpmyadmin
IF "%1"=="close" GOTO close
IF "%1"=="httrack" GOTO httrack
IF "%1"=="here" GOTO here
IF "%1"=="help" GOTO help

:openchrome
  chrome %2
  GOTO end

:openweb
  chrome "https://%2"
  GOTO end

:xampplocal
  xampp_start
  chrome "localhost/projects/%2" 
  GOTO end

:openlocal
  chrome "localhost/projects/%2"
  GOTO end

:opensearch
  chrome "https://google.com/search?q=%2 %3 %4 %5 %6 %7 %8 %9"
  GOTO end

:phpmyadmin
  chrome "localhost/phpmyadmin"
  GOTO end

:httrack
  chrome "C:\websites\index.html"
  GOTO end

:here
  chrome .
  GOTO end

:close
  taskkill /im chrome.exe /t /f
  GOTO end

:help
  echo. 
  echo Commands for the Browse Script
  echo  browse  { open chrome }
  echo  browse ^<url^>  { open url in chrome } 
  echo  browse web ^<website^[.com^/.org^/.co.uk^/etc^]^> -> open website in chrome with https
  echo  browse xlocal
  echo  browse local
  echo  browse search
  echo  browse close
  echo  browse httrack
  echo  browse here
  echo  browse help 
  GOTO end

:end
