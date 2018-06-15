echo This is cmd file
set out=%~dp0\x64\Release
mkdir %out%
echo > %out%\test.exe
dir
