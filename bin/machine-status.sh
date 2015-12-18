#!/bin/sh

machine_status=`docker-machine status $1`
if [[ "$machine_status" == "Stopped" ]]; then
  docker-machine start $1
  sleep 3
fi

eval "$(docker-machine env $1)"
export DOCKER_IP=$(docker-machine ip $1)

echo "Docker Machine $1 ready at $DOCKER_IP"

