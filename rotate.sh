ESSRC=es54x
ESVERSION=5.5.1
PLUGINVERSION=1.16.10-pre6

cp /me/elasticsearch-readonlyrest-plugin-5.x/$ESSRC/build/distributions/readonlyrest-${PLUGINVERSION}_es$ESVERSION.zip ror.zip && \
docker build -t readonlyrest_$PLUGINVERSION_es$ESVERSION . && \
docker-compose down && \
docker-compose rm && docker-compose up
