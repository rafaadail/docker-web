FROM ubuntu:latest

RUN apt-get update && apt-get install -y tzdata && \
    apt-get install -y software-properties-common language-pack-en-base \
    && LC_ALL=en_US.UTF-8 add-apt-repository -y ppa:openjdk-r/ppa \
    && apt-get update \
    && apt-get install -y openjdk-8-jdk \
    curl \
    gcc-multilib \
    lib32z1 \
    nodejs \
    lib32stdc++6

#RUN yarn global add react-native-cli \
#&& pacman -S nodejs yarn \
#&& pacman -S jdk8-openjdk \
#&& archlinux-java set java-8-openjdk


## Install composer
#RUN curl -sL https://deb.nodesource.com/setup_10.x | sudo bash -
#
#RUN sed -i "/\[multilib\]/,/Include/"'s/^#//' /etc/pacman.conf