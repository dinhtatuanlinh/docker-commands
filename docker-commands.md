docker ps -a
docker images
docker search keywords
docker pull imageName
docker images rm imageID
docker run -it imageID
docker attach containerID
      exist (stop container)
      ctr + p + q (out container)
docker stop containerID
docker run -it --name "name container" -h HOSTNAME imageID
docker rm (-f) containerID
docker exec containerID COMMAND
docker commit containerID IMAGENAME:TAG
docker save --output FILENAME.tar imageID
docker load -i PATH-FILE-IMAGE.tar
docker tag imageID NAME:TAG
docker run -it -v pathHost:pathContainer imageID
- share data between 2 container
docker run -it --name <container name> --volumes-from <other container name> <imageID>
