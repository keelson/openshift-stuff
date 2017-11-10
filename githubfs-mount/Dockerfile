FROM centos:7

RUN INSTALL_PKGS="git libfuse gradle unzip" && \
    yum install -y $INSTALL_PKGS && \
    yum clean all && \
    rm -rf /var/cache/yum && \

RUN cd /tmp && \
    git clone https://github.com/akiellor/githubfs && \
    cd githubfs && \
    gradle distZip && \
    unzip build/distributions/githubfs.zip -d .

USER 1001
CMD ['pwd']
