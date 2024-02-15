#!/bin/bash
docker stop pipecont
docker rm pipecont
docker build -t pipeimg .
docker run -i --name pipecont --network=gomatha --ip 192.168.1.50  -p 6565:6565  pipeimg /bin/bash

docker start pipecont
docker exec pipecont ./startup.sh
