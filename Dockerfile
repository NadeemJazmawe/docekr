FROM  mcr.microsoft.com/dotnet/aspnet:7.0-alpine

# Set the working directory inside the container
WORKDIR /GingerRuntime

# Download libhostpolicy.so and copy it to the container
RUN apk update && apk add --no-cache curl \
    && curl -o libhostpolicy.so -L https://github.com/dotnet/runtime/releases/download/7.0.0-preview.9.21272.8/libhostpolicy.so \
    && chmod +x libhostpolicy.so \
    && apk del curl

# Download git it to the container
RUN apk add git

# Copy the published .NET application files from the host to the container
COPY ./publish ./GingerRuntime

# Set root user to be used in the container
# USER root

# Set the entry point to run the main DLL file
ENTRYPOINT ["dotnet", "GingerRuntime.dll"]
