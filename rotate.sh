cp /me/elasticsearch-readonlyrest-plugin-5.x/es51x/build/distributions/readonlyrest-1.16.10-pre6_es5.1.2.zip  ror.zip && docker build -t readonlyrest_1.16.10-pre5_es5.1.2 . && docker-compose down && docker-compose rm && docker-compose up
