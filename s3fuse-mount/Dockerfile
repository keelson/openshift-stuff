FROM centos:7

ENV MOUNTPOINT=/storage

RUN yum install -y epel-release && \
    INSTALL_PKGS="automake fuse fuse-devel gcc-c++ git libcurl-devel libxml2-devel make openssl-devel" && \
    yum install -y $INSTALL_PKGS && \
    yum clean all && \
    rm -rf /var/cache/yum

RUN mkdir /tmp/build && \
    cd /tmp/build && \
    git clone https://github.com/s3fs-fuse/s3fs-fuse.git && \
    cd s3fs-fuse && \
    ./autogen.sh && \
    ./configure && \
    make && \
    make install

COPY run.sh /usr/bin/run.sh
RUN mkdir /storage && \
    chown 1001:0 /storage && \
    chmod 775 /storage
CMD ["sh", "run.sh"]
