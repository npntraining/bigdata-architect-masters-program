# Running Notes

## Starting NPN Training VM

__Formatting NameNode__

```
[npntraining ~]> cd /home/npntraininig/softwares/hadoop/hadoop-2.7.3/data/namenode
[npntraining ~]> rm -r current
[npntraining ~]> cd ..
[npntraining ~]> cd datanode
[npntraining ~]> rm -r current
[npntraining ~]> hdfs namenode -format
```

__Starting Storage Services__

```
[npntraining ~]> start-dfs.sh
[npntraining ~]> jps
NameNode
DataNode
SecondaryNameNode
```

__Starting Processing Services__

```
[npntraining ~]> start-yarn.sh
[npntraining ~]> jps
NameNode
DataNode
SecondaryNameNode
ResourceManager
NodeManager
```

__Executing MapReduce Program on CloudXLab__

```
yarn jar /usr/hdp/2.6.2.0-205/hadoop-mapreduce/hadoop-mapreduce-examples-2.7.3.2.6.2.0-205.jar wordcount /user/npnnaveenpn2187/1.dat /user/npnnaveenpn2187/output_01
```

__Executing MapReduce Program on NPN Training__



__Monitoring Application__

```
yarn application -list
yarn logs -applicationId <applicationId>
```

