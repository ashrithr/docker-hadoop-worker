# Launching hadoop-worker container

## Pulling the master image

```
docker pull ashrithr/hadoop-master:latest
```

## Start a master container:

```
docker run -d -h hadoop.worker --name hadoop.worker -e HADOOP_REPLICATION=1 -e HADOOP_MASTER=hadoop.master --net hadoop00 ashrithr/hadoop-worker
```

> Assuming the master is on the hadoop00 overlay network