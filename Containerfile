FROM docker.io/redhat/ubi9
RUN dnf -y install autoconf gcc-c++ make && dnf clean all
COPY build.sh /
ENTRYPOINT ["/build.sh"]
