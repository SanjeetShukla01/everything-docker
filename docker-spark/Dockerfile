# Use a base image with Java and Spark pre-installed
FROM openjdk:11.0.11-jre-slim-buster as builder

# Set Spark version
ENV SPARK_VERSION=3.4.1
ENV HADOOP_VERSION=3

# Download and extract Apache Spark
# Download and install Spark
RUN apt-get update && \
    apt-get install -y wget curl vim python3, python3-pip && \
    wget -q https://downloads.apache.org/spark/spark-$SPARK_VERSION/spark-$SPARK_VERSION-bin-hadoop$HADOOP_VERSION.tgz && \
    tar -xzf spark-$SPARK_VERSION-bin-hadoop$HADOOP_VERSION.tgz -C /opt && \
    rm spark-$SPARK_VERSION-bin-hadoop$HADOOP_VERSION.tgz


# Set Spark home environment variable
ENV SPARK_HOME=/opt/spark-$SPARK_VERSION-bin-hadoop$HADOOP_VERSION

# Set Spark and Python paths
ENV PATH=$PATH:$SPARK_HOME/bin
ENV PYTHONPATH=$SPARK_HOME/python:$PYTHONPATH:$SPARK_HOME/python/lib/py4j-0.10.9-src.zip


# Expose Spark web UI and PySpark ports
EXPOSE 4040 6066 7077 8080 8081

# Set the working directory
WORKDIR /app

# # Copy the necessary files
# COPY requirements.txt /app/requirements.txt
#
# # Install Python dependencies
# RUN pip install -r requirements.txt

# Copy the entrypoint script
COPY entrypoint.sh /app/entrypoint.sh

# Set execute permissions for the entrypoint script
RUN chmod +x /app/entrypoint.sh

# Start Spark master and worker when the container starts
CMD ["/app/entrypoint.sh"]

