module "eks" {
  source  = "terraform-aws-modules/eks/aws"
  version = "~> 20.0"

  cluster_name    = var.cluster_name
  cluster_version = "1.32"

  cluster_endpoint_public_access = true

  vpc_id     = var.vpc_id
  subnet_ids = var.private_subnet_ids

  enable_irsa = true

  eks_managed_node_groups = {

    flask_app_nodes = {
      desired_size = 1
      min_size     = 1
      max_size     = 2

      instance_types = ["t3.small"]

      capacity_type = "ON_DEMAND"

      ami_type = "AL2_x86_64"

      labels = {
        role = "general"
      }
    }

    argocd_nodes = {
      desired_size = 1
      min_size     = 1
      max_size     = 1

      instance_types = ["t3.micro"]

      capacity_type = "ON_DEMAND"

      ami_type = "AL2_x86_64"

      labels = {
        role = "argocd"
      }
    }
  }

  tags = {
    Environment = "dev"
    Terraform   = "true"
  }
}