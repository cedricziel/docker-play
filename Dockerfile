FROM cedricziel/docker-scala
MAINTAINER Cedric Ziel "cedric@cedric-ziel.com"

RUN apt-get -y install wget unzip && apt-get clean

RUN wget http://downloads.typesafe.com/play/2.2.3/play-2.2.3.zip -O /opt/play.zip

RUN unzip /opt/play.zip -d /opt

RUN mv /opt/play-2.2.3 /opt/play

RUN rm /opt/play.zip

ENV PATH /opt/play:$PATH
