FROM  mcr.microsoft.com/dotnet/aspnet:7.0-alpine

COPY ./publish ./GingerRuntime

USER root

RUN apk update
RUN apk add git

RUN cp /lib/ld-linux-x86-64.so.1 /lib/ld-linux-x86-64.so.2

WORKDIR /GingerRuntime
ENTRYPOINT ["dotnet", "GingerRuntime.dll"]
