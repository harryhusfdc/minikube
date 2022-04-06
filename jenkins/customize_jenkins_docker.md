# Customize Jenkins Docker #
Create customized Jenkins image from jenkins/jenkins:lts-jdk11, which is light weighted jenkins container images. Install software we need in this container.

```sh
docker build -t jenkins_customize -f Dockerfile_jenkins .
docker run -p 8080:8080 -p 50000:50000 -d -v /var/run/docker.sock:/var/run/docker.sock -v jenkins_home:/var/jenkins_home jenkins_customize
```

```
docker exec -it --user root <container id> bash
```

