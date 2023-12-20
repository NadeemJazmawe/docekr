FROM ghcr.io/nadeemjazmawe/gingerruntime:latest

USER root

RUN apt update

RUN apt install firefox

RUN apt install chromium
RUN apt install chromium-chromedriver

ENV CHROME_BIN=/usr/bin/chromium-browser \
    CHROME_PATH=/usr/lib/chromium/

RUN export PATH=$PATH:/usr/lib/chromium/

USER guest

WORKDIR /GingerRuntime
ENTRYPOINT ["dotnet", "GingerRuntime.dll"]
