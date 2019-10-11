@ECHO OFF
IF "%1"=="" GOTO bkupall
IF "%1"=="work" GOTO openweb
IF "%1"=="xprojects" GOTO xampplocal
IF "%1"=="projects" GOTO openlocal
IF "%1"=="downloads" GOTO opensearch
IF "%1"=="phpmyadmin" GOTO phpmyadmin
IF "%1"=="close" GOTO close
IF "%1"=="httrack" GOTO httrack
IF "%1"=="here" GOTO here
IF "%1"=="help" GOTO help
IF "%1"=="lambda" GOTO lambda
IF "%1"=="pirple" GOTO pirple