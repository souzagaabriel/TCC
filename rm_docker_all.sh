docker stop $(docker ps -a -q)
docker rm -f $(docker ps -a -q)
#docker rmi -f $(docker image ls -a -q)