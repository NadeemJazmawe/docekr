# FROM  mcr.microsoft.com/dotnet/aspnet:7.0-alpine
FROM mcr.microsoft.com/dotnet/sdk:7.0
ENV DOTNET_SYSTEM_GLOBALIZATION_INVARIANT=1

# Copy your application code into the container
COPY ./Runtime /GingerRuntime

# Switch to root user for installation
USER root

# Install the .NET SDK and other required packages
RUN apk update
RUN apk add git

# RUN apk install libicu.x86_64


# Set the working directory
WORKDIR /GingerRuntime

# Specify the entry point to start your ASP.NET application
#ENTRYPOINoT ["dotnet", "GingerRuntime.dll"]
CMD ["./GingerRuntime"]
