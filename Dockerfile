FROM redhat/ubi8
# Copy your application code into the container
COPY ./Runtime /GingerRuntime

# Switch to root user for installation
USER root

# Install the .NET SDK and other required packages
RUN yum -y update
RUN yum -y install libicu.x86_64
# Set the working directory
WORKDIR /GingerRuntime

# Specify the entry point to start your ASP.NET application
#ENTRYPOINoT ["dotnet", "GingerRuntime.dll"]
CMD ["./GingerRuntime"]
