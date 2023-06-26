FROM openjdk:11.0.11-jre-slim-buster

# Install Python 3 and pip
RUN apt-get update && apt-get install -y python3 python3-pip

# Set Python 3 as the default Python version
RUN ln -s /usr/bin/python3 /usr/bin/python

# Verify Python and pip installation
RUN python --version && pip3 --version

# Set the working directory
WORKDIR /app

# Copy your Java and Python files to the working directory
COPY . /app