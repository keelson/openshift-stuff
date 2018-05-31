FROM centos:7

ENV MOUNTPOINT=/storage

RUN yum install -y epel-release && \
    INSTALL_PKGS="curlftpfs" && \
    yum install -y $INSTALL_PKGS && \
    yum clean all && \
    rm -rf /var/cache/yum

COPY run.sh /usr/bin/run.sh

RUN adduser -d ${HOME} -m -g 0 -u 1001 mount-user

RUN mkdir ${MOUNTPOINT} && \
    chown 1001:0 ${MOUNTPOINT} && \
    chmod 775 ${MOUNTPOINT}

USER 1001

CMD ["sh", "run.sh"]
