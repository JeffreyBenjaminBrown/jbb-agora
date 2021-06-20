DOCKER_IMAGE_SUFFIX="2021-06-20.consolidated"

docker build -f Dockerfile -t \
  jeffreybbrown/agora:new .   \
  | tee logs/"build-log.`date`.txt"
tput bel # Make a noise to indicate termination.

docker tag jeffreybbrown/agora:new \
           jeffreybbrown/agora:$DOCKER_IMAGE_SUFFIX
docker tag jeffreybbrown/agora:new \
           jeffreybbrown/agora:latest
docker rmi jeffreybbrown/agora:new
