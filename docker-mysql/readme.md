# docker-mysql

This repo uses docker-compose file to create mysql container.
And in order to provide an UI for mysql it also creates a container for phpmyadmin.
The phpmyadmin ui can be accessed at localhost:8080 

## To start docker-mysql docker container:
1. Clone this repo using 
   - ```git clone <url to this repo>```
2. Build the image 
   - ```docker-compose build```
3. run the container 
   - ```docker-compose up```


### To run mysql UI (phpmyadmin):
Go to localhost:8080 and login using below credentials
- username: myuser
- password: mypassowrd

To login as root, use below credentials
- username: root
- password: password


### To run in Terminal/cmd:

```docker exec -it CONTAINER_ID mysql -uroot -ppassword```

In case you launched my docker container in cmd or terminal from docker `launch in terminal` button then 
use below command to login to mysql: 

```mysql -h localhost -P 3306 -u root -p```

## Start Container using start.sh:
To use the script, make sure it has executable permissions (chmod +x start.sh). Then you can run the script with the desired command-line argument.

Examples:

```./start.sh build ```: will build the Docker image using docker-compose build.
```./start.sh run``` will run the container using docker-compose up -d.
```./start.sh build_and_run``` will both build the Docker image and run the container using the respective functions.


## Start Container using start.bat (Windows):
```start.bat build```: Executes the :build function to build the Docker image.
```start.bat run```: Executes the :run function to run the Docker container.
```start.bat build_and_run```: Executes the :build_and_run function to build the image and run the container.


Note: Dockerifle is not used 