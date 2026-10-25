terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0.1"
    }
  }
}

provider "docker" {
  host = "unix:///var/run/docker.sock"
}

# 1. Define a private Docker Bridge Network
resource "docker_network" "custom_network" {
  name = "terraform-isolated-net"
}

# 2. Pull the Nginx Alpine image
resource "docker_image" "nginx_image" {
  name         = "nginx:alpine"
  keep_locally = false
}

# 3. Provision the Container on the network
resource "docker_container" "nginx_server" {
  image = docker_image.nginx_image.image_id
  name  = "tf-provisioned-nginx"

  networks_advanced {
    name = docker_network.custom_network.name
  }

  ports {
    internal = 80
    external = 8085
  }
}
