set image_name=sample
set target_folder=c:\src

docker build -t %image_name% -m 2GB .
docker run -v %~dp0:%target_folder% %image_name% %target_folder%\test.cmd