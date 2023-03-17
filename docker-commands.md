docker ps -a
docker images
docker search keywords
docker inspect containerID
docker pull imageName
docker images rm imageID
docker run -it imageID /bin/bash
      -i (nhan tuong tac) vẫn lắng nghe đợi input từ bàn phím để đưa vào giao diện dòng lệnh trong container
      -t (connect to terminate) vào thẳng trong terminal của container (mở 1 cổng để vào trong container để thực hiện cli)
docker attach containerID || vào trong container mở cùng một tiến trình với tiến trình stdin stdout
      exist (stop container)
      ctr + p + q (out container)
docker stop containerID
docker run -it --name "name container" -h hostport:containerport imageID
      --rm(remove container after stopping container)
docker  rm (-f) containerID
docker exec containerID COMMAND
docker exec containerID /bin/bash || vào trong container bằng 1 tiến trình mới
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

for i in `docker ps -a |grep "Exited"|awk '{print $1}'`; do docker rm $i; done