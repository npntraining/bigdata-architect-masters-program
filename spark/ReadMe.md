
# Apache Spark

## Apache Maven Dependency

pom.xml

```xml
<properties>
    <project.build.sourceEncoding>UTF-8</project.build.sourceEncoding>
    <jdk.version>1.8</jdk.version>
    <spark.version>2.4.0</spark.version>
    <scala.binary.version>2.11</scala.binary.version>
</properties>


<dependencies>
    <dependency>
        <groupId>org.apache.spark</groupId>
        <artifactId>spark-core_${scala.binary.version}</artifactId>
        <version>${spark.version}</version>
    </dependency>

    <dependency>
        <groupId>org.apache.spark</groupId>
        <artifactId>spark-sql_${scala.binary.version}</artifactId>
        <version>${spark.version}</version>
    </dependency>

</dependencies>
```



## Useful Links

* https://www.npntraining.com/blog/category/big-data-engineering/apache-spark/





