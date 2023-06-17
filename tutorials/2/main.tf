terraform {
  required_providers {
    /* https://registry.terraform.io/providers/kreuzwerker/docker/latest */
    docker = {
      source  = "kreuzwerker/docker"
      version = "3.0.2"
    }
  }
}

provider "docker" {
  host = "unix:///var/run/docker.sock"
}

resource "docker_image" "cvwa_image" {
  name         = "cvwa:latest"
  keep_locally = true

  /* https://registry.terraform.io/providers/kreuzwerker/docker/latest/docs/resources/image#build */
  build {
    /* https://developer.hashicorp.com/terraform/language/expressions/references#path-module */
    context    = "${path.module}/CVWA/."
    dockerfile = "Dockerfile"
  }
}

resource "docker_container" "cvwa_container" {
  image = docker_image.cvwa_image.image_id
  name  = var.container_name

  ports {
    internal = 80
    external = 8000
  }

  volumes {
    /* https://developer.hashicorp.com/terraform/language/expressions/references#path-cwd */
    host_path      = "${path.cwd}/CVWA"
    container_path = "/web_app"
    read_only      = true
  }
}
