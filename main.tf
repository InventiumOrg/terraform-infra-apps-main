module "ec2-k3d" {
  #checkov:skip=CKV_TF_1: registry module pinned by immutable version, not a git source
  source  = "app.terraform.io/Varsentinel/ec2-k3d/aws"
  version = "1.0.0"
  # insert required variables here
  region            = var.region
  vpc_name          = var.vpc_name
  cidr_block        = var.cidr_block
  name              = var.name
  volume_size       = var.volume_size
  subnet_cidr_block = var.subnet_cidr_block
}
