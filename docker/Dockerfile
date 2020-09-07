FROM debian:buster
LABEL version="0.0.1" maintainer="zcchen <Bill.CHEN.fs.cn@outlook.com>"

ARG APT_SOURCE="http\://mirrors.aliyun.com/"
RUN sed -i /etc/apt/sources.list -e "s:http[s]\{0,1\}\:\/\/[a-zA-Z0-9.]*:${APT_SOURCE}:g"

RUN apt update \
    && apt install -y --no-install-recommends \
        g++ build-essential cmake \
    && apt clean

COPY ./ /src
RUN cd /src \
    && mkdir build && cd build \
    && cmake .. \
    && make \
    && make install \
    && ldconfig \
    && rm -rf /src || rm -rf /src

CMD ["sh", "-c", "helloworld"]