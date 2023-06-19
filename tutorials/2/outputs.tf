output "CVWA_container_id" {
  value       = docker_container.cvwa_container.id
  description = "ID of the Docker container"
}

output "CVWA_image_id" {
  value       = docker_image.cvwa_image.id
  description = "IF of the Docker image"
}

output "CVWA_volumes" {
  value       = docker_container.cvwa_container.volumes
  description = "Container volumes"
}
