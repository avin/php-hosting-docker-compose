FROM alpine:3.5
MAINTAINER Avin Grape <carcinogen75@gmail.com>

# Install base packages
RUN apk update && \
    apk add mysql-client mysql bash &&\
    rm -f /var/cache/apk/*
    
ADD my.cnf /etc/mysql/ 
RUN chmod 0644 /etc/mysql/my.cnf
ADD init.sh /tmp/init.sh
ADD backup.sh /tmp/backup.sh
RUN chmod +x /tmp/backup.sh /tmp/init.sh

EXPOSE 3306
VOLUME ["/backup", "/data/mysql"]


CMD /tmp/init.sh
