FROM  mcr.microsoft.com/dotnet/aspnet:7.0-alpine

COPY ./publish ./GingerRuntime

USER root

RUN apk update
RUN apk add git
RUN apt-get update && apt-get install -y libc6

WORKDIR /GingerRuntime
ENTRYPOINT ["dotnet", "GingerRuntime.dll"]
