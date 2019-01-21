#Stop all containers
docker stop (docker ps -a -q)

#Remove all containers
docker rm (docker ps -a -q)

#Remove all container images (!! DO NOT RUN THIS DURING THE LAB !!)
docker rmi (docker ps -a -q)

