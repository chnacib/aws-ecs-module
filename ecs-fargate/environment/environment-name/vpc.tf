module "vpc_main" {
  source                = "../../modules/vpc"
  proj_name             = "vpc-main"
  vpc_cidr              = "10.1.0.0/16"
  public_subnet_1_cidr  = "10.1.1.0/24"
  public_subnet_2_cidr  = "10.1.2.0/24"
  public_subnet_3_cidr  = "10.1.3.0/24"
  private_subnet_1_cidr = "10.1.11.0/24"
  private_subnet_2_cidr = "10.1.22.0/24"
  private_subnet_3_cidr = "10.1.33.0/24"
}