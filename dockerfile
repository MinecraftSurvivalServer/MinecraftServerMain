# ubuntu 24.04LTS x86-64をディストリビューション
FROM ubuntu:24.04

# 必要なライブラリの導入、初期設定
RUN apt update && \
    apt -y upgrade && \
    apt install -y ufw openjdk-21-jdk openjdk-17-jdk && \
    apt update