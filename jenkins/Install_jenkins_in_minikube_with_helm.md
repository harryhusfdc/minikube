## Install Jenkins in Minikube with Helm ##
----
### Install Helm ###
https://helm.sh/docs/intro/quickstart/

```sh
brew install helm
helm repo add bitnami https://charts.bitnami.com/bitnami
helm search repo bitnami
```
----
### Install Jenkins ###

```sh
kubectl create namespace jenkins
helm install --namespace jenkins jenkins bitnami/jenkins
```

#### Get the initial username & password ####
```sh
echo Username: user
echo Password: $(kubectl get secret --namespace jenkins jenkins -o jsonpath="{.data.jenkins-password}" | base64 --decode)
export SERVICE_IP=$(kubectl get svc --namespace jenkins jenkins --template "{{ range (index .status.loadBalancer.ingress 0) }}{{ . }}{{ end }}")

```

#### Get the jenkins url ####

```sh
# Make sure to expose LoadBalancer service with "minikube tunner" command in another window first.
# Otherwise the serivce external ip is not assgined and the below command won't work.
export SERVICE_IP=$(kubectl get svc --namespace jenkins jenkins --template "{{ range (index .status.loadBalancer.ingress 0) }}{{ . }}{{ end }}")
echo "Jenkins URL: http://$SERVICE_IP/"
```
----
### Clean up ###

```sh
helm uninstall --namespace jenkins jenkins
kubectl delete namespace jenkins
```