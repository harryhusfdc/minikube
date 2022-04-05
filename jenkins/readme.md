## Install Jenkins in minikube ##

### Install Helm ###
https://helm.sh/docs/intro/quickstart/

```
brew install helm
helm repo add bitnami https://charts.bitnami.com/bitnami
helm search repo bitnami
```

### Install Jenkins ###

```
helm install --namespace jenkins --name jenkins bitnami/jenkins
```

