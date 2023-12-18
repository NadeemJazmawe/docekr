FROM ghcr.io/nadeemjazmawe/gingerruntime:latest

USER root

RUN yum install firefox

RUN yum install chromium
RUN yum install chromium-chromedriver

ENV CHROME_BIN=/usr/bin/chromium-browser \
    CHROME_PATH=/usr/lib/chromium/

RUN export PATH=$PATH:/usr/lib/chromium/

USER guest

WORKDIR /GingerRuntime
ENTRYPOINT ["dotnet", "GingerRuntime.dll"]
