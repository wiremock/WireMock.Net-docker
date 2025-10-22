# How to manually create image for Windows-Nano

## Windows Nano 1809

### 1. Build

``` cmd
docker build -t sheyenrath/wiremock.net-nanoserver-1809 -f .\Dockerfile.nanoserver-1809 .
```

### 2. Stop
``` ps
docker rm -f $(docker ps -a -q)
```

### 3. Delete dangling images

``` ps
docker rmi $(docker images -f "dangling=true" -q)
```

### 4. Tag

``` cmd
docker tag sheyenrath/wiremock.net-nanoserver-1809:latest sheyenrath/wiremock.net-nanoserver-1809:1.15.0
```

### 5. Push

``` cmd
docker push sheyenrath/wiremock.net-nanoserver-1809:latest
docker push sheyenrath/wiremock.net-nanoserver-1809:1.15.0
```