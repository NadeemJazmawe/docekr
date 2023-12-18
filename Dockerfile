FROM  mcr.microsoft.com/dotnet/aspnet:7.0-alpine

COPY ./Runtime ./GingerRuntime


USER root

RUN apk update
RUN apk add git

WORKDIR /GingerRuntime
ENTRYPOINT ["dotnet", "GingerRuntime.dll"]
