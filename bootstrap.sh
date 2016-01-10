#!/bin/bash

: ${HADOOP_PREFIX:=/usr/local/hadoop}
: ${HADOOP_REPLICATION:=1}
: ${HADOOP_MASTER:=master}

$HADOOP_PREFIX/etc/hadoop/hadoop-env.sh

# installing libraries if any - (resource urls added comma separated to the ACP system variable)
cd $HADOOP_PREFIX/share/hadoop/common ; for cp in ${ACP//,/ }; do  echo == $cp; curl -LO $cp ; done; cd -

sed -i s/MASTER_HOSTNAME/${HADOOP_MASTER}/ $HADOOP_PREFIX/etc/hadoop/core-site.xml
sed -i s/MASTER_HOSTNAME/${HADOOP_MASTER}/ $HADOOP_PREFIX/etc/hadoop/hdfs-site.xml
sed -i s/MASTER_HOSTNAME/${HADOOP_MASTER}/ $HADOOP_PREFIX/etc/hadoop/mapred-site.xml
sed -i s/MASTER_HOSTNAME/${HADOOP_MASTER}/ $HADOOP_PREFIX/etc/hadoop/yarn-site.xml
sed -i s/REPLICATION/${HADOOP_REPLICATION}/ $HADOOP_PREFIX/etc/hadoop/hdfs-site.xml