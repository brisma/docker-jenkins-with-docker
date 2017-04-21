FROM jenkins

MAINTAINER Manuel Valentino <brisma@gmail.com>

USER root
RUN apt-get -qq update \
   && apt-get -qq -y install \
   curl

RUN curl -sSL https://get.docker.com/ | sh

RUN usermod -aG docker jenkins

USER jenkins
