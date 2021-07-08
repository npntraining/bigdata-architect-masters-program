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
yarn jar /usr/hdp/2.6.2.0-205/hadoop-mapreduce/hadoop-mapreduce-examples-2.7.3.2.6.2.0-205.jar wordcount /user/$USER/1.dat /user/$USER/output_01
```

Note : Next time when you run do change the output directory(output_01 change to some name)

```
[npntraining ~]> hdfs dfs -cat /user/$USER/output_01/part-0*
```

__Executing MapReduce Program on NPN Training__



__Monitoring Application__

```
yarn application -list
yarn logs -applicationId <applicationId>
```

## Hive

**Hive Dependency**

pom.xml

```xml
<?xml version="1.0" encoding="UTF-8"?>
<project xmlns="http://maven.apache.org/POM/4.0.0"
         xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
         xsi:schemaLocation="http://maven.apache.org/POM/4.0.0 http://maven.apache.org/xsd/maven-4.0.0.xsd">
    <modelVersion>4.0.0</modelVersion>

    <groupId>org.example</groupId>
    <artifactId>hive-jdbc-connection</artifactId>
    <version>1.0-SNAPSHOT</version>

    <properties>
        <maven.compiler.source>8</maven.compiler.source>
        <maven.compiler.target>8</maven.compiler.target>
    </properties>

    <dependencies>
        <!-- JDK Tools -->
        <dependency>
            <groupId>jdk.tools</groupId>
            <artifactId>jdk.tools</artifactId>
            <scope>system</scope>
            <version>1.8.0_73</version>
            <systemPath>${JAVA_HOME}/lib/tools.jar</systemPath>
        </dependency>
        <!-- https://mvnrepository.com/artifact/org.apache.hive/hive-jdbc -->
        <dependency>
            <groupId>org.apache.hive</groupId>
            <artifactId>hive-jdbc</artifactId>
            <version>0.13.1</version>
        </dependency>
        <dependency>
            <groupId>org.apache.hadoop</groupId>
            <artifactId>hadoop-core</artifactId>
            <version>1.2.1</version>
        </dependency>
        <!-- Hadoop Mapreduce Client Core -->
        <dependency>
            <groupId>org.apache.hadoop</groupId>
            <artifactId>hadoop-mapreduce-client-core</artifactId>
            <version>2.6.0</version>
        </dependency>
    </dependencies>

<build>
		<plugins>
			<plugin>
				<groupId>org.apache.maven.plugins</groupId>
				<artifactId>maven-compiler-plugin</artifactId>
				<version>3.6.1</version>
				<configuration>
					<source>1.8</source>
					<target>1.8</target>
				</configuration>
			</plugin>

			<plugin>
				<groupId>org.apache.maven.plugins</groupId>
				<artifactId>maven-assembly-plugin</artifactId>
				<executions>
					<execution>
						<phase>package</phase>
						<goals>
							<goal>single</goal>
						</goals>
						<configuration>
							<archive>
								<manifest>
									<mainClass>${com.npntraining.hands_on.HiveConnection}</mainClass>
								</manifest>
							</archive>
							<descriptorRefs>
								<descriptorRef>jar-with-dependencies</descriptorRef>
							</descriptorRefs>
						</configuration>
					</execution>
				</executions>
			</plugin>	
		</plugins>
	</build>
</project>
```



## Sqoop

```
source /home/npnnaveenpn2187/big-data-architect-training/hadoop/data/retail_db.sql
```

