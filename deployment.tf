
resource "kubernetes_deployment" "sample-nodejs" {
  metadata {
    name      = "sample-nodejs"
    namespace = kubernetes_namespace.sample-nodejs.metadata.0.name
  }
  spec {
    replicas = 1
    selector {
      match_labels = {
        app = "sample-nodejs"
      }
    }
    template {
      metadata {
        labels = {
          app = "sample-nodejs"
        }
      }
      spec {
        container {
          image = "megathorx/knote-js:1.0.0"
          name  = "sample-nodejs-container"
          port {
            container_port = 80
          }
          env {
              name = "MONGO_URL"
              value = "mongodb://mongo:27017/dev"

        }

      }
    }
  }
}
}

resource "kubernetes_deployment" "mongo" {
  metadata {
    name      = "mongo"
    namespace = kubernetes_namespace.sample-nodejs.metadata.0.name
  }
  spec {
    replicas = 1
    selector {
      match_labels = {
        app = "mongo"
      }
    }
    template {
      metadata {
        labels = {
          app = "mongo"
        }
      }
      spec {
        container {
          image = "mongo:3.6.17-xenial"
          name  = "mongo-container"
          port {
            container_port = 27017
          }
      }
    }
  }
}
}
