# Minikube Playground #

## Required Software ##

- Docker
- Virtalbox
- Kubectl
- Minikube
- Terraform
- Helm

## Required Accounts ##
- GitHub
- Dockerhub

----

## Docker Install ##

https://docs.docker.com/desktop/mac/install/

## Virtualbox (optional) ##

```
brew install -cask virtualbox
```

## kubectl ##
```
brew install kubectl
```

## Minikube ##
https://minikube.sigs.k8s.io/docs/start/

```
curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube-darwin-amd64
sudo install minikube-darwin-amd64 /usr/local/bin/minikube
```
## Terraform ##
```sh
# Install tfenv
brew install tfenv
# Check installed version:
tfenv list
# install terraform version
tfenv install 1.1.7
tfenv use 1.1.7
# verify install
terraform -version
```
## Helm ##
https://helm.sh/docs/intro/quickstart/

```
brew install helm
```
----
## GitHub Account ##

https://github.com/

Create personal git repositories. Generate a personal access token. 

## Dockerhub Account ##

https://hub.docker.com/

Create personal docker repositories.