output "container_id" {
  value       = docker_container.cvwa_container.id
  description = "ID of the Docker container"
}

output "image_id" {
  value       = docker_image.cvwa_image.id
  description = "IF of the Docker image"
}
