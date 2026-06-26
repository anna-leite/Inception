FROM debian:bookworm

WORKDIR /app

COPY tools/init.sh /app/init.sh

RUN apt update && \
apt install -y mariadb-server mariadb-client

CMD ["bash", "init.sh"]

# bien separer les etapes pour image legere

# exemple compiler dans une premiere etape
# puis charger le logiciel est copie dans l'image 