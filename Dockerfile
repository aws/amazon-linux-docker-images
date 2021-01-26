FROM scratch
ADD amzn-container-minimal-2018.03.0.20210126.1-x86_64.tar.xz /
CMD ["/bin/bash"]
RUN mkdir /usr/src/srpm \
 && curl -o /usr/src/srpm/srpm-bundle.tar.gz "https://amazon-linux-docker-sources.s3-accelerate.amazonaws.com/srpm-bundle-c05e579179c56d65b75577c4714e241c43b021f6c5595e79ec5f5d693c3e697c.tar.gz" \
 && echo "a5a576edc920ac864f63ecd88bca4eeeeea9721653e7f1b2eba858721057e122  /usr/src/srpm/srpm-bundle.tar.gz" | sha256sum -c -
