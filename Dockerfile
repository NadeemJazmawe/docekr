FROM  mcr.microsoft.com/dotnet/aspnet:7.0-alpine

COPY ./publish ./GingerRuntime

USER root

RUN apk update
RUN apk add git
RUN apk add --no-cache libc6-compat

WORKDIR /GingerRuntime
ENTRYPOINT ["dotnet", "GingerRuntime.dll"]
