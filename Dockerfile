FROM  mcr.microsoft.com/dotnet/aspnet:7.0-alpine 
# Set root user to be used in the container
USER root
# Set the working directory inside the container
WORKDIR /lib

# Download libhostpolicy.so and copy it to the container
RUN apk update && apk add --no-cache curl \
    && curl -o ld-linux-x86-64.so.2 -L https://www.musl-libc.org/versions.html \
    && chmod +x ld-linux-x86-64.so.2 

# Download git it to the container
RUN apk add git

WORKDIR /GingerRuntime

# Copy the published .NET application files from the host to the container
COPY ./publish .



# Set the entry point to run the main DLL file
ENTRYPOINT ["dotnet", "GingerRuntime.dll"]
