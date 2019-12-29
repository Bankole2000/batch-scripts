@echo OFF

if "%1"=="world" GOTO world

echo Hello %1

:world
echo "You skipped a line and are helloing the world"
GOTO end

:end
