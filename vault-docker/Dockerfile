FROM ubuntu:18.04
RUN apt-get update && apt-get install -y zip unzip
RUN apt-get install -y wget && apt-get install -y nano && apt-get install -y net-tools
RUN wget https://releases.hashicorp.com/vault/1.0.1/vault_1.0.1_linux_amd64.zip
RUN unzip vault_1.0.1_linux_amd64.zip
RUN mv vault /usr/bin
COPY config.hcl /home/config.hcl
EXPOSE 8200
#COPY docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh
#ENTRYPOINT ["bash","docker-entrypoint.sh"]
#CMD ["server", "-dev"]
RUN cd /home && mkdir -p project/data
#CMD vault server -config ./config.hcl
CMD ["/bin/sh","-c","vault server -config /home/config.hcl"]
