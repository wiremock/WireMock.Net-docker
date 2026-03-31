docker build -t sheyenrath/wiremock.net-windows  -f .\Dockerfile.windows .
docker rmi $(docker images -f "dangling=true" -q)
docker images