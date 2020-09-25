#
# Kapsule Cluster
#

output "cluster_id" {
  description = "Kapsule Cluster ID."
  value       = module.kapsule.cluster_id
}

output "cluster_name" {
  description = "Kapsule Cluster name."
  value       = module.kapsule.cluster_name
}

output "cluster_version" {
  description = "Kapsule Cluster version."
  value       = module.kapsule.cluster_version
}

output "control_plane_endpoint" {
  description = "Kapsule Cluster URL of the Kubernetes API server."
  value       = module.kapsule.control_plane_endpoint
}

output "control_plane_host" {
  description = "Kapsule Cluster URL of the Kubernetes API server."
  value       = module.kapsule.control_plane_host
}

output "control_plane_ca" {
  description = "Kapsule Cluster CA certificate of the Kubernetes API server."
  value       = module.kapsule.control_plane_ca
}

output "control_plane_token" {
  description = "Kapsule Cluster token to connect to the Kubernetes API server."
  value       = module.kapsule.control_plane_token
}

output "control_plane_status" {
  description = "Kapsule Cluster status of the Kubernetes cluster."
  value       = module.kapsule.control_plane_status
}

output "kubeconfig" {
  description = "Kubernetes config to connect to the Kapsule cluster."
  value       = module.kapsule.kubeconfig
}

output "raw_kubeconfig" {
  description = "Kubernetes config to connect to the Kapsule cluster."
  value       = module.kapsule.raw_kubeconfig
}
