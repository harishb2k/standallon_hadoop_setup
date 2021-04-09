

# Edit
/usr/local/Cellar/hadoop/3.3.0/libexec/etc/hadoop/core-site.xml
<property>
    <name>fs.defaultFS</name>
	<value>hdfs://hadoop.cluster:9000</value>
</property>

# Edit
/usr/local/Cellar/hadoop/3.3.0/libexec/etc/hadoop/hdfs-site.xml
<property>
  <name>dfs.client.use.datanode.hostname</name>
  <value>true</value>  
</property>

# Edit
/etc/hosts
192.168.64.2    hadoop.cluster
192.168.64.2    hadoop

# Set following in client
export HADOOP_USER_NAME=ubuntu
export HADOOP_CONF_DIR=/usr/local/Cellar/hadoop/3.3.0/libexec/etc/hadoop

# Run Job
spark-submit --class org.example.App --deploy-mode cluster --master yarn example.jar false Append
