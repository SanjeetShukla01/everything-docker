FROM openjdk:8-jdk-slim

# Set Spark version
ENV SPARK_VERSION 3.2.0
ENV HADOOP_VERSION 3.3.1

# Download and install Apache Spark
RUN apt-get update && \
    apt-get install -y curl && \
    curl -O https://downloads.apache.org/spark/spark-${SPARK_VERSION}/spark-${SPARK_VERSION}-bin-hadoop${HADOOP_VERSION}.tgz && \
    tar -xzf spark-${SPARK_VERSION}-bin-hadoop${HADOOP_VERSION}.tgz && \
    mv spark-${SPARK_VERSION}-bin-hadoop${HADOOP_VERSION} /spark && \
    rm spark-${SPARK_VERSION}-bin-hadoop${HADOOP_VERSION}.tgz

# Set Spark home and add Spark bin to the PATH
ENV SPARK_HOME=/spark
ENV PATH=$PATH:$SPARK_HOME/bin

# Expose Spark UI port
EXPOSE 4040

# Set the entry point
ENTRYPOINT ["/bin/bash"]
