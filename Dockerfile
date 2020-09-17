FROM ubuntu:18.04
MAINTAINER 15623637978@163.com

ENV LANG C.UTF-8

RUN echo "deb https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ focal main restricted universe multiverse" /etc/apt/sources.list && \
    echo "deb https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ focal-updates main restricted universe multiverse" /etc/apt/sources.list && \
    echo "deb https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ focal-backports main restricted universe multiverse" /etc/apt/sources.list && \
    echo "deb https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ focal-security main restricted universe multiverse"

RUN DEBIAN_FRONTEND=noninteractive \
    TZ=Asia/Shanghai \
    apt-get update && \
    apt-get install -y vim && \ 
    apt-get install -y python3-pip && \
    apt-get install -y wget && \
    apt-get install -y dpkg && \
    apt-get install -y unzip && \
    apt-get install -y apt-utils && \
    apt-get autoremove -y
    

RUN python3 -m pip install -i http://pypi.douban.com/simple/ --trusted-host pypi.douban.com --upgrade pip && \
    pip config set global.index-url http://pypi.douban.com/simple/ && \
    pip config set global.trusted-host pypi.douban.com

RUN python3 -m pip install \
    jieba==0.39 \ 
    pypinyin \
    kenlm \
    torch \
    torchtext \
    transformers
