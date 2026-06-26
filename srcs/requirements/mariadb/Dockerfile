FROM debian:bookworm

WORKDIR /app

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
apt-get install -y --no-install-recommends mariadb-server && \
rm -rf /var/lib/apt/lists/*

COPY conf/50-server.cnf /etc/mysql/mariadb.conf.d/
COPY conf/my.cnf /etc/mysql/

COPY tools/init.sh /app/init.sh

CMD ["bash", "/app/init.sh"]





# bien separer les etapes pour image legere

# exemple compiler dans une premiere etape
# puis charger le logiciel est copie dans l'image 