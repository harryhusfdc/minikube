Docker nginx example
```
docker run --name mynginx -p 80:80 -d nginx:alpine  -i
docker run --rm -it -p 8080:80 simple-nginx
```

Build my own nginx
```
docker build -t simple-nginx .
docker run --rm -it -p 8080:80 simple-nginx
```

Push the image to dockerhub
```
docker tag simple-nginx:0.0.1 harryhu/simple-nginx:0.0.1
docker login -u harryhu
docker push harryhu/simple-nginx:0.0.1
```
