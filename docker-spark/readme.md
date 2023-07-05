https://stackoverflow.com/questions/76593113/spark-application-run-inside-a-docker-container-i-see-only-driver-node-but-no

and step into the docker container

```
hostfolder="$(pwd)"
dockerfolder="/home/simha/app"
docker run --rm -it \
  --net="host" \
  -v ${hostfolder}:${dockerfolder} \
python_spark_custom_build:latest /bin/bash
```

![img.png](img.png)

![img_1.png](img_1.png)


Q1. I see there is only driver and no worked node. Can driver act as worker also

Q2: How to create a cluser within my container. I want to have a setup of 1 driver and 4 worker node in this container. So that parallelization can be achieved.

I am planning to use ECS task to run my spark scripts using docker containers. I dont want to use EMR or glue.

I am fine to have one node (acting as worker and driver) given that multiple executors are running so the parallelization is achieved.

My understanding is driver and executors are the core of paralleization. Irrespective of they run in seperate node or all together is one node