set image_name=sample

docker build -t %image_name% -m 2GB .
docker run -v %~dp0:c:\src %image_name%