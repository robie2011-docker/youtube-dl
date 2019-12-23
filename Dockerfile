FROM python:3.8-alpine
RUN mkdir /downloads
RUN apk update && apk add ffmpeg
RUN pip install youtube-dl
WORKDIR /downloads
ENTRYPOINT ["youtube-dl"]
