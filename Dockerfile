FROM debian:jessie
MAINTAINER Kolja Dummann <kolja,dummann@logv.ws>
RUN dpkg --add-architecture i386 
RUN apt-get update 
RUN apt-get install -y curl lib32gcc1 lib32stdc++6 libgcc1 libcurl4-gnutls-dev:i386 
RUN apt-get clean 
RUN apt-get autoremove

RUN mkdir /dnst &&  mkdir /dnst-conf && mkdir /steamcmd && cd /steamcmd && \
  	curl -SLO "http://media.steampowered.com/installer/steamcmd_linux.tar.gz" \
  	&& tar -xvf steamcmd_linux.tar.gz -C /steamcmd && rm steamcmd_linux.tar.gz

RUN /steamcmd/steamcmd.sh +login anonymous +force_install_dir /dnst +app_update 343050 validate +quit

ADD ./start.sh /start
RUN chmod +x /start

EXPOSE 10999/udp
VOLUME ["/dnst-conf"]
ENTRYPOINT ["/start"]