ESSRC=es51x
ESVERSION=5.1.1
PLUGINVERSION=1.16.10-pre6

cp /me/elasticsearch-readonlyrest-plugin-5.x/$ESSRC/build/distributions/readonlyrest-${PLUGINVERSION}_es$ESVERSION.zip ror.zip && \
docker build -t readonlyrest_cluster . && \
docker-compose down && \
docker-compose rm && docker-compose up

