
resource "kubernetes_service" "sample-nodejs" {
  metadata {
    name      = "sample-nodejs"
    namespace = default.sample-nodejs.metadata.0.name
  }
  spec {
    selector = {
      app = default.sample-nodejs.spec.0.template.0.metadata.0.labels.app
    }
    type = "LoadBalancer"
    port {
      port        = 80
      target_port = 3000
    }
  }
}

resource "kubernetes_service" "mongo" {
  metadata {
    name      = "mongo"
    namespace = default.sample-nodejs.metadata.0.name
  }
  spec {
    selector = {
      app = default.mongo.spec.0.template.0.metadata.0.labels.app
    }
    type = "ClusterIP"
    port {
      port        = 27017
      target_port = 27017
    }
  }
}