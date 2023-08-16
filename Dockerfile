FROM  mcr.microsoft.com/dotnet/aspnet:7.0-alpine

COPY ./publish /

USER root

# Download libhostpolicy.so and copy it to the container
RUN apk update && apk add --no-cache curl \
    && curl -o libhostpolicy.so -L https://github.com/dotnet/runtime/releases/download/7.0.0-preview.9.21272.8/libhostpolicy.so \
    && chmod +x libhostpolicy.so \
    && apk del curl
RUN apk add git

ENTRYPOINT ["dotnet", "GingerRuntime.dll"]
