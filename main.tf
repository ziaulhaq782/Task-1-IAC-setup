provider "aws" {
  region = "us-east-1"
}

module "network" {
  source = "./modules/network"
}

module "security" {
  source = "./modules/security"
  vpc_id = module.network.vpc_id
  public_subnet_ids = module.network.public_subnet_ids
}

module "alb" {
  source             = "./modules/alb"
  vpc_id             = module.network.vpc_id
  public_subnet_ids  = module.network.public_subnet_ids
  alb_sg_id          = module.security.alb_sg_id
  app_sg_id          = module.security.app_sg_id
}

module "asg" {
  source               = "./modules/asg"
  vpc_id               = module.network.vpc_id
  private_subnet_ids   = module.network.private_subnet_ids
  app_sg_id            = module.security.app_sg_id
  target_group_arn     = module.alb.target_group_arn
}


module "iam" {
  source = "./modules/iam"
}
