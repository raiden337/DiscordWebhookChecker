@echo off
set /p a="Input Webhook Here : "
if [%a%]==[] (
	CALL:error
	pause
	EXIT /B
)
if [%a%] NEQ [] (
	CALL:main
	EXIT /B 1
)
ECHO is on
:main
echo Getting Webhook Info For %a% ...
curl %a%
pause