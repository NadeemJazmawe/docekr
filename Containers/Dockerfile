FROM ghcr.io/nadeemjazmawe/gingerruntime:latest

USER root

RUN apt update

# RUN apt install -y firefox

RUN apt install -y chromium
RUN apt install -y chromium-chromedriver

ENV CHROME_BIN=/usr/bin/chromium-browser \
    CHROME_PATH=/usr/lib/chromium/

RUN export PATH=$PATH:/usr/lib/chromium/

USER guest

WORKDIR /GingerRuntime
ENTRYPOINT ["dotnet", "GingerRuntime.dll"]
