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
IF "%1"=="lambda" GOTO lambda
IF "%1"=="pirple" GOTO pirple

:openchrome
  chrome %2
  GOTO end

:openweb
  chrome "https://%2"
  GOTO end

:xampplocal
  xampp_start
  chrome "localhost/projects/%2"
  cd C:\xampp\htdocs\projects\%2 
  GOTO end

:openlocal
  chrome "localhost/projects/%2"
  cd C:\xampp\htdocs\projects\%2
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

:pirple
  chrome "https://pirple.thinkific.com/enrollments"
  call go pirple
  GOTO end

:lambda
  chrome "https://apply.lambdaschool.com"
  call go lambda
  GOTO end

:help
  echo. 
  echo Commands for the Browse Script
  echo  browse  { open chrome }
  echo  browse ^<url^>  { open url in chrome } 
  echo  browse web ^<website.com^> { open website in chrome with https }
  echo  browse xlocal ^<foldername^> { Startup Xampp and open localhost:\projects\foldername in chrome }
  echo  browse local ^<foldername^> { open localhost:\projects\foldername in chrome }
  echo  browse search ^<search words up to 9^> { open googler search results for search terms in chrome }
  echo  browse close { exit/close all instances of chrome }
  echo  browse httrack { Open httrack downloaded websites }
  echo  browse here { open current directory in chrome browser }
  echo  browse pirple { open Pirple in browser and navigate to pirple directory }
  echo  browse lambda { open Lambda School in browser and navigate to lambda directory }
  echo  browse help { show this help menu }
  GOTO end

:end
