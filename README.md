# Hadoop Worker

Hadoop worker image which configures HDFS DataNode & YARN NodeManager.

## Build

```
build -t ashrithr/hadoop-worker .
```

## Usage

```
docker pull ashrithr/hadoop-worker:latest
```

### Start a master container

Run Hadoop worker container in daemonized mode

```
docker run -d -h hadoop.worker --name hadoop.worker -e HADOOP_REPLICATION=1 -e HADOOP_MASTER=hadoop.master --net hadoop00 ashrithr/hadoop-worker
```

> Assuming the master is on the hadoop00 overlay network