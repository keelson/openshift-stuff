FROM centos:7

RUN INSTALL_PKGS="curlftpfs" && \
    yum install -y $INSTALL_PKGS && \
    yum clean all && \
    rm -rf /var/cache/yum

RUN curlftpfs ftp://ftp.sunet.se/ /mnt
USER 1001
CMD ['ls -l /mnt']
