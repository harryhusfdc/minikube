# Install Jenkins in docker #

Pre-required software

- docker
----
## Install Jenkins ##

Use docker run to install Jenkins. The Jenkins url is http://localhost:8080
```sh
docker run -p 8080:8080 -p 50000:50000 -d -v /var/run/docker.sock:/var/run docker.sock -v jenkins_home:/var/jenkins_home jenkins/jenkins:lts
```

Get docker container id
```sh
docker ps
```

Run an interactive shell on the Jenkins container and get initial password. Use this password to do initial setup from the browswer window.
```sh
# run this in the interactive shell on Jenkins container
docker exec -it --user root <container id> bash
cat /var/jenkins_home/secrets/initialAdminPassword
```

Get Initial Password
```sh
# run this in the interactive shell on Jenkins container
cat /var/jenkins_home/secrets/initialAdminPassword
```

Install docker software in Jenkins (Docker in Docker)
```sh
# run this in the interactive shell on Jenkins container
curl https://get.docker.com/ > dockerinstall
chmod 777 dockerinstall
./dockerinstall
```

Exit the Jenkins container and run the following command to add security
```sh
sudo chmod 666 /var/run/docker.sock
```

## Initial Set Up Jenkins

Goto to http://localhost:8080. 
1. Use the initial password from previous step to login. Create a new user.
2. Set up a Global Credential for the GitHub account using personal access token.
3. Set up a Global Credential for the dockerhub account using username & password.

----
## Clean Up ##
```sh
docker stop <container_id>
docker rm <container_id>
docker rmi <image_id>
```