FROM docker.elastic.co/elasticsearch/elasticsearch:5.5.1
COPY ["ror.zip","/tmp/"]
COPY ["log4j2.properties","/usr/share/elasticsearch/config/"]
COPY ["keystore.jks","/usr/share/elasticsearch/config/"]
COPY ["elasticsearch.yml","/usr/share/elasticsearch/config/"]
RUN sed -i "s|debug|info|g" /usr/share/elasticsearch/config/log4j2.properties
USER root
RUN chown elasticsearch:elasticsearch config/*
RUN cat /usr/share/elasticsearch/config/elasticsearch.yml
USER elasticsearch
ENV "ES_JAVA_OPTS"="-Xms512m -Xmx512m -Dcom.readonlyrest.reloadsettingsonboot=true"
RUN yes | /usr/share/elasticsearch/bin/elasticsearch-plugin remove x-pack --purge
RUN yes | /usr/share/elasticsearch/bin/elasticsearch-plugin install file:///tmp/ror.zip
