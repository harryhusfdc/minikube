Docker nginx example
```sh
# Run nginx with default configuration
docker run --name mynginx -p 80:80 -d nginx:alpine 
# Run nginx with customized htdocs.
docker run --name mynginx -p 80:80 -d -v /Users/harry.hu/Documents/sandbox/minikube/docker/htdocs:/usr/share/nginx/html nginx:alpine 
#Alternatively use docker-compose
docker-compose -f nginx.yaml up
# To cleanup
docker stop mynginx
docker rm mynginx
```

Build my own nginx
```sh
docker build -t simple-nginx .
#--rm automatically remove container when it exits
docker run --rm -p 80:80 simple-nginx
```

Push the image to dockerhub
```sh
docker tag simple-nginx:0.0.1 harryhu/simple-nginx:0.0.1
docker login -u harryhu
docker push harryhu/simple-nginx:0.0.1
```
