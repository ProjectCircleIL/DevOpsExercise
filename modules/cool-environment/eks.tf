module "eks" {
  source          = "terraform-aws-modules/eks/aws"
  version         = "17.24.0"
  cluster_name    = "my-cool-cluster"
  cluster_version = "1.16"

  subnets = module.vpc.private_subnets
  vpc_id  = module.vpc.vpc_id

  tags = {}

  worker_groups = [
    {
      name                 = "first-node-pool"
      instance_type        = "t3.micro"
      asg_desired_capacity = "1"
      asg_min_size         = "1"
      asg_max_size         = "1"
    }
  ]

}

