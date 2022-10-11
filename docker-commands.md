docker ps -a
docker images
docker search keywords
docker pull imageName
docker images rm imageID
docker run -it imageID
      -i (nhan tuong tac)
      -t (connect to terminate)
docker attach containerID
      exist (stop container)
      ctr + p + q (out container)
docker stop containerID
docker run -it --name "name container" -h HOSTNAME imageID
      --rm(remove container after stopping container)
docker  rm (-f) containerID
docker exec containerID COMMAND
docker commit containerID IMAGENAME:TAG
docker save --output FILENAME.tar imageID
docker load -i PATH-FILE-IMAGE.tar
docker tag imageID NAME:TAG
docker run -it -v <HostPath>:pathContainer imageID | run container voi folder dung chung voi may chu
- share data between 2 container
docker run -it --name <container name> --volumes-from <other container name> <imageID>
- create docker volume
docker volume ls
docker volume create <volume name>
docker volume inspect <volume name>
docker volume rm <volume name>
- attach volume to container
docker run -it --name <container name> --mount source=<volume name>,target=<container path> <imageID>
docker volume create -opt device=<HostPath> --opt type=none --opt o=bind <volume name>

docker network ls
docker network inspect <network name>
docker inspect <containerid>
docker run -it --name <container name> -p <host port>:<container port> <imageId>
docker network create --driver bridge <network name>
docker network rm <network name>
docker run -it --name <container name> --network <network name> <imageID>
docker network connect <network name> <containerID>
docker logs --details <container name> || show logs cua 1 container