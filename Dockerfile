FROM ubuntu:18.04


RUN apt-get update && \
    apt-get -y install puppet-master 



COPY startPuppetMaster.sh startPuppetMaster.sh
COPY startPuppetAgent.sh startPuppetAgent.sh
COPY startPuppet.sh startPuppet.sh
COPY puppet.conf /etc/puppet/puppet.conf
COPY autosign.conf /etc/puppet/autosign.conf

RUN chmod +x /startPuppet*

EXPOSE 8140

CMD ["./startPuppet.sh"]


