FROM ubuntu:latest

WORKDIR /root
ADD \
http://44.201.182.135/install/tuan/ubuntu_install_vps.sh \
.

RUN chmod +x ubuntu_install_vps.sh
RUN bash ubuntu_install_vps.sh
