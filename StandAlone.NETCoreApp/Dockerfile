FROM --platform=$BUILDPLATFORM mcr.microsoft.com/dotnet/sdk:8.0 AS build-env
ARG TARGETARCH

LABEL maintainer="Stef Heyenrath"

WORKDIR /app

# copy csproj and restore as distinct layers
COPY StandAlone.NETCoreApp.csproj ./
RUN dotnet restore -a $TARGETARCH

# copy everything else and build
COPY *.cs ./
RUN dotnet publish -c Release -a $TARGETARCH -o out --no-restore

# build runtime image
FROM mcr.microsoft.com/dotnet/aspnet:8.0
ENV ASPNETCORE_HTTP_PORTS=80
WORKDIR /app
COPY --from=build-env /app/out ./
EXPOSE 80
ENTRYPOINT ["./wiremock-net", "--Urls", "http://*:80"]
CMD ["--WireMockLogger", "WireMockConsoleLogger"]