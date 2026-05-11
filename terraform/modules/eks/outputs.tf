output "cluster_name" {
  value = aws_eks_cluster.devops-cluster.name
}

output "cluster_endpoint" {
  value = aws_eks_cluster.devops-cluster.endpoint
}