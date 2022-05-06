
resource "kubernetes_namespace" "my_namespace" {
  metadata {
    name = "nginx"
  }
}

resource "kubernetes_deployment" "my_deployment" {
  metadata {
    name      = "nginx"
    namespace = kubernetes_namespace.my_namespace.metadata.0.name
  }
  spec {
    replicas = 2
    selector {
      match_labels = {
        app = "MyTestApp"
      }
    }
    template {
      metadata {
        labels = {
          app = "MyTestApp"
        }
      }
      spec {
        container {
          image = "harryhu/simple-nginx:0.0.1"
          image_pull_policy = "Always"
          name  = "nginx-container"
          port {
            container_port = "${var.port}"
          }
        }
      }
    }
  }
}

resource "kubernetes_service" "my_serivce" {
  metadata {
    name      = "nginx"
    namespace = kubernetes_namespace.my_namespace.metadata.0.name
  }
  spec {
    selector = {
      app = kubernetes_deployment.my_deployment.spec.0.template.0.metadata.0.labels.app
    }
    type = "NodePort"
    port {
      node_port   = 30201
      port        = "${var.port}"
      target_port = "${var.port}"
    }
  }
}

