# WireMock.Net-docker
WireMock.Net-docker is a Docker image which runs [WireMock.Net](https://github.com/wiremock/WireMock.Net) (a flexible library for stubbing and mocking web HTTP responses using request-matching criteria.)

[![Slack](https://badgen.net/badge/icon/slack?icon=slack&label)](https://slack.wiremock.org/)
[![Gitter](https://img.shields.io/gitter/room/wiremock_dotnet/Lobby.svg)](https://gitter.im/wiremock_dotnet/Lobby)

## Linux

### Pull latest image

```sh
docker pull sheyenrath/wiremock.net
```

### Pull latest image (alpine)

```sh
docker pull sheyenrath/wiremock.net-alpine
```

### Start the WireMock.Net container using Docker

```sh
docker run -it --rm -p 9091:80 sheyenrath/wiremock.net
```

### Start the WireMock.Net container using WSLC
See [WSL container is now available for public preview](https://devblogs.microsoft.com/commandline/wsl-container-is-now-available-for-public-preview/).

``` ps
wslc run -it --rm -p 9091:80 sheyenrath/wiremock.net-alpine
```

## Windows NanoServer

The following versions are supported:
- nanoserver-1809
- nanoserver-1903
- nanoserver-1909

### Pull latest image

```sh
docker pull sheyenrath/wiremock.net-nanoserver-<version>
```

### Start the WireMock.Net container

```sh
docker run -it --rm -p 9091:80 sheyenrath/wiremock.net-nanoserver-<version>
```

## Windows 2022

### Pull latest image

```sh
docker pull sheyenrath/wiremock.net-windows
```

### Start the WireMock.Net container

```sh
docker run -it --rm -p 9091:80 sheyenrath/wiremock.net-windows
```

## Windows 2025

### Pull latest image

```sh
docker pull sheyenrath/wiremock.net-windows-2025
```

### Start the WireMock.Net container

```sh
docker run -it --rm -p 9091:80 sheyenrath/wiremock.net-windows-2025
```

## Commands
For all possible commands, see this [WIKI - Commandline Arguments](https://github.com/wiremock/WireMock.Net-docker/wiki/Commandline-arguments)

## Using

> Access [http://localhost:9091/__admin/settings](http://localhost:9091/__admin/mappings) to display the mappings.

For more functionality, see [WIKI](https://github.com/wiremock/WireMock.Net/wiki)
