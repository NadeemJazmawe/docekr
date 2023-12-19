FROM  mcr.microsoft.com/dotnet/aspnet:6.0-alpine

ENV DOTNET_SYSTEM_GLOBALIZATION_INVARIANT=1

# Copy your application code into the container
COPY ./Runtime/publish /GingerRuntime

# Switch to root user for installation
USER root

# Install the .NET SDK and other required packages
RUN yum -y update
RUN apk update
RUN apk add git


# Set the working directory
WORKDIR /GingerRuntime

# Specify the entry point to start your ASP.NET application
#ENTRYPOINoT ["dotnet", "GingerRuntime.dll"]
CMD ["./GingerRuntime"]
