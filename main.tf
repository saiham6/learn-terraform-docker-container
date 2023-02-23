terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 2.13.0"
    }
  }
}

provider "docker" {}

# resource "docker_image" "nginx" {
#   name         = "nginx:latest"
#   keep_locally = false
# }

# resource "docker_container" "nginx" {
#   image = docker_image.nginx.latest
#   name  = "tutorial"
#   ports {
#     internal = 80
#     external = 8000
#   }
# }

resource "docker_container" "lamda_terraform" {
  image = "lamda_test"
  name = "lamda-terraform"
  ports {
    internal = 8000
    external = 9000
  }
}
