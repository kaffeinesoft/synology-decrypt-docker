FROM dorowu/ubuntu-desktop-lxde-vnc

ADD https://global.download.synology.com/download/Tools/SynologyCloudSyncDecryptionTool/016/Linux/x86_64/SynologyCloudSyncDecryptionTool-016_x64.tar.gz /app/
ADD ./decryptor.desktop /usr/share/applications/

WORKDIR /app

VOLUME ["/data"]

RUN cd /app/ && tar zxvf /app/SynologyCloudSyncDecryptionTool-016_x64.tar.gz && rm /app/SynologyCloudSyncDecryptionTool-016_x64.tar.gz && rm libz.so.1
