FROM scratch
ADD amzn2-container-raw-2.0.20210219.0-x86_64.tar.xz /
CMD ["/bin/bash"]
RUN mkdir /usr/src/srpm \
 && curl -o /usr/src/srpm/srpm-bundle.tar.gz "https://amazon-linux-docker-sources.s3-accelerate.amazonaws.com/srpm-bundle-abc7929fca91cdb8ef05600baeb5500309ad7e959bdc5801e05e960937a1887a.tar.gz" \
 && echo "e0f5a2c5b165bbebd736a75582dc89040c9f64c6d1ddfd84b0421bc44e46de5d  /usr/src/srpm/srpm-bundle.tar.gz" | sha256sum -c -
