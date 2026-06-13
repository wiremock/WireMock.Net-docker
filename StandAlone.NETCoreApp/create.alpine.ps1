docker run --privileged --rm tonistiigi/binfmt --install all
docker buildx create --use --name builder
docker buildx inspect --bootstrap

docker buildx build --platform linux/amd64,linux/arm64 -t sheyenrath/wiremock.net-alpine -f Dockerfile.alpine . --load

# docker build -t sheyenrath/wiremock.net-alpine -f .\Dockerfile.alpine .
# docker rmi $(docker images -f "dangling=true" -q)
docker images