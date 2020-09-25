output "cluster_id" {
  description = "Kapsule Cluster ID."
  value       = scaleway_k8s_cluster_beta.cluster.id
}

output "cluster_name" {
  description = "Kapsule Cluster name."
  value       = scaleway_k8s_cluster_beta.cluster.name
}

output "cluster_version" {
  description = "Kapsule Cluster version."
  value       = scaleway_k8s_cluster_beta.cluster.version
}

output "control_plane_endpoint" {
  description = "Kapsule Cluster API endpoint."
  value       = scaleway_k8s_cluster_beta.cluster.apiserver_url
}

output "control_plane_host" {
  description = "Kapsule Cluster URL of the Kubernetes API server."
  value       = scaleway_k8s_cluster_beta.cluster.kubeconfig.host 
}

output "control_plane_ca" {
  description = "Kapsule Cluster CA certificate of the Kubernetes API server."
  value       = scaleway_k8s_cluster_beta.cluster.kubeconfig.cluster_ca_certificate 
}

output "control_plane_token" {
  description = "Kapsule Cluster token to connect to the Kubernetes API server."
  value       = scaleway_k8s_cluster_beta.cluster.kubeconfig.token 
}

output "control_plane_status" {
  description = "Kapsule Cluster status of the Kubernetes cluster."
  value       = scaleway_k8s_cluster_beta.cluster.status 
}

output "control_plane_upgrade_available" {
  description = "Set to `true` if a newer Kubernetes version is available."
  value       = scaleway_k8s_cluster_beta.cluster.upgrade_available 
}

locals {
  kubeconfig = <<KUBECONFIG


apiVersion: v1
clusters:
- cluster:
    server: ${scaleway_k8s_cluster_beta.cluster.kubeconfig.host}
    certificate-authority-data: ${caleway_k8s_cluster_beta.cluster.kubeconfig.cluster_ca_certificate}
  name: ${var.customer}-kapsule-${var.cluster_name}
contexts:
- context:
    cluster: ${var.customer}-kapsule-${var.cluster_name}
    user: ${var.customer}-scw-${var.cluster_name}
  name: ${var.customer}-${var.cluster_name}
current-context: ${var.customer}-${var.cluster_name}
kind: Config
preferences: {}
users:
- name: ${var.customer}-scw-${var.cluster_name}
  token: ${scaleway_k8s_cluster_beta.cluster.kubeconfig.token }
KUBECONFIG
}

output "kubeconfig" {
  description = "Kubernetes config to connect to the Kapsule Cluster."
  value       = local.kubeconfig
}

output "raw_kubeconfig" {
  description = "Kubernetes config to connect to the Kapsule Cluster."
  value       = scaleway_k8s_cluster_beta.cluster.kubeconfig.config_file
}
