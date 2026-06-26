FROM debian:bookworm

WORKDIR /app

COPY tools/init.sh /app/init.sh
COPY conf/50-server.cnf /etc/mysql/mariadb.conf.d/
COPY conf/my.cnf /etc/mysql/

RUN apt update && \
apt install -y mariadb-server mariadb-client && \
rm -rf /var/lib/apt/lists/*

CMD ["bash", "init.sh"]

# bien separer les etapes pour image legere

# exemple compiler dans une premiere etape
# puis charger le logiciel est copie dans l'image 