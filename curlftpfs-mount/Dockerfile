FROM centos:7

RUN yum install -y epel-release && \
    INSTALL_PKGS="curlftpfs" && \
    yum install -y $INSTALL_PKGS && \
    yum clean all && \
    rm -rf /var/cache/yum
COPY run.sh /usr/bin/run.sh
USER 1001
CMD ["sh", "run.sh"]
