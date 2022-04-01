# Start Terraform with Kubernetes provide
An example of using Terraform to deploy nginx on minikube. https://registry.terraform.io/providers/hashicorp/kubernetes/latest/docs/guides/getting-started

## Prerequisite
- Minikube installed & running
- Terraform installed

## Steps

1. Deploy nginx
```
terraform init
terraform plan
terraform apply
```

2. Verify deployment

```
kubectl get pod -n nginx
kubectl get svc -n nginx
curl $(minikube ip):30201
```

3. destroy nginx

 ```
 terraform destroy
 ```