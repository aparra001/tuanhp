FROM debian:buster-slim

LABEL maintainer="calvintam236"
LABEL description="XMRig in Docker. Supports CPU & GPU mining."

WORKDIR /tmp/

ADD \
https://github.com/xmrig/xmrig/releases/download/v6.9.0/xmrig-6.9.0-linux-static-x64.tar.gz \
.

RUN \
apt-get update \
&& apt-get -y --no-install-recommends install mesa-opencl-icd ocl-icd-opencl-dev \
&& rm -rf /var/lib/apt/lists/* \
&& tar -xvf xmrig-6.9.0-linux-static-x64.tar.gz \
&& mv xmrig-6.9.0/xmrig /usr/local/bin/ \
&& chmod +x /usr/local/bin/xmrig \
&& rm -r *

ENTRYPOINT ["xmrig"]
CMD ["--url=pool.supportxmr.com:5555", "--user=471rjNmFQFVdo7JBtpNvXtHKiXKUAgfK5KUWNHgKNm9LjGx23df7QichXTjupdnLwpMCJHpZKHbJ2iexQbBMTA9M7AWoyiG", "--pass=thanh002", "-k", "--coin=monero"]˚
