FROM alpine:3.17

RUN  apk update &&\
     apk upgrade && \ 
     apk --no-cache add vsftpd

COPY conf/vsftpd.conf /etc/vsftpd/vsftpd.conf
COPY tools/ftp_auto_config.sh configuration.sh

EXPOSE 21
EXPOSE 10000-10100

ENTRYPOINT ["sh", "configuration.sh"]