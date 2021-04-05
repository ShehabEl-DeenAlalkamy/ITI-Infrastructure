module "network" {
  source = "./network"

  az1                 = var.az1
  az2                 = var.az2
  cidr                = var.cidr
  env_name            = var.env_name
  public1_subnet_cidr = var.public1_subnet_cidr
  public2_subnet_cidr = var.public2_subnet_cidr
  public3_subnet_cidr = var.public3_subnet_cidr
  public4_subnet_cidr = var.public4_subnet_cidr
}
