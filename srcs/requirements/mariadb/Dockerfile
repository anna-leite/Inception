FROM debian:bookworm

WORKDIR /app

COPY tools/init.sh /app/init.sh

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
apt-get install -y --no-install-recommends mariadb-server && \
rm -rf /var/lib/apt/lists/*

FROM debian:bookworm

WORKDIR /app

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
apt-get install -y --no-install-recommends mariadb-server && \
rm -rf /var/lib/apt/lists/*

CMD ["bash", "init.sh"]

COPY conf/50-server.cnf /etc/mysql/mariadb.conf.d/
COPY conf/my.cnf /etc/mysql/

COPY tools/init.sh /app/init.sh

CMD ["bash", "init.sh"]



# bien separer les etapes pour image legere

# exemple compiler dans une premiere etape
# puis charger le logiciel est copie dans l'image 