# Install Jenkins Based on A Customized Image #
Create a customized Jenkins image from jenkins/jenkins:lts-jdk11.

```sh
docker build -t jenkins_customize -f Dockerfile_jenkins .
# Port 50000 is open to allow remote java api call to allow the container to connect to a slave container
# -v /var/run/docker.sock:/var/run/docker.sock exposes host docker deamon to the container (docker in docer situation)
docker run -p 8080:8080 -p 50000:50000 -d -v /var/run/docker.sock:/var/run/docker.sock -v jenkins_home:/var/jenkins_home jenkins_customize
```

Command to terminal access the container:
```
docker exec -it --user root <container id> bash
```

