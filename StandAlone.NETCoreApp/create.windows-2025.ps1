docker build -t sheyenrath/wiremock.net-windows-2025  -f .\Dockerfile.windows-2025 .
docker rmi $(docker images -f "dangling=true" -q)
docker images