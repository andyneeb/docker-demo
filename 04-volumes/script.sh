# v1.0 no Volume
docker build -t my-httpd --build-arg IMAGE_VERSION=1.0 .
docker run --name httpd -d -p 8080:8080 my-httpd
docker exec -it httpd cat image-version
docker cp html/index.html httpd:/var/www/html/


# v2.0 no Volume
docker build -t my-httpd --build-arg IMAGE_VERSION=2.0 .
docker stop httpd && docker rm httpd
docker run --name httpd -d -p 8080:8080 my-httpd
docker exec -it httpd cat image-version


# v2.0 with Volume
docker volume create --name www
docker stop httpd && docker rm httpd
docker run --name httpd -d -p 8080:8080 -v www:/var/www my-httpd
docker exec -it httpd cat image-version
docker cp html/index.html httpd:/var/www/html/


# v3.0 with Volume
docker build -t my-httpd --build-arg IMAGE_VERSION=3.0 .
docker stop httpd && docker rm httpd
docker run --name httpd -d -p 8080:8080 -v www:/var/www my-httpd
docker exec -it httpd cat image-version



# Misc
docker rm -f $(docker ps -a -q)  # Stop & delete all container
docker volume rm $(docker volume ls -q)  # Delete all volumes
docker rmi -f $(docker images | grep "<none>" | awk "{print \$3}") # delete untagged images


