terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 2.13.0"
    }
  }
}

provider "docker" {}

resource "docker_container" "lamda_terraform" {
  image = "lamda_test"
  name = "lamda-terraform"
  ports {
    internal = 8080
    external = 9000
  }
}
