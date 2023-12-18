FROM ghcr.io/nadeemjazmawe/gingerruntime:latest

USER root

RUN yum  
RUN yum install 

RUN yum install firefox

RUN yum install chromium
RUN yum install chromium-chromedriver

ENV CHROME_BIN=/usr/bin/chromium-browser \
    CHROME_PATH=/usr/lib/chromium/

RUN export PATH=$PATH:/usr/lib/chromium/

USER root

WORKDIR /GingerRuntime
ENTRYPOINT ["dotnet", "GingerRuntime.dll"]
