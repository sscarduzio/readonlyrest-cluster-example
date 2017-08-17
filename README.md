# ReadonlyREST Cluster with docker-compose

This is a simulation of a two nodes Elasticsearch 5.5.1 cluster. Both nodes have the ReadonlyREST 1.16.10-pre5 plugin installed (see Dockerfile) and configured (see elasticsearch.yml) with the smaple settings found in readonlyrest.com/documentation/kibana.html

The only settings that were necessary to make this work were 

```yml
cluster.name: "docker-cluster"
network.host: 0.0.0.0
```

