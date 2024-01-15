FROM machina/base-alpine

RUN apk --update add --no-cache libmagic tiff-dev jpeg-dev openjpeg-dev zlib-dev android-tools

# Install ADB
# RUN apk --update-cache --repository http://dl-3.alpinelinux.org/alpine/edge/testing/ add android-tools


COPY requirements.txt /tmp/
RUN pip3 install -r /tmp/requirements.txt
RUN rm /tmp/requirements.txt

COPY ContentURIAnalysis.json /schemas/

COPY src /machina/src