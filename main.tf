module "vpc" {
source = "./modules/vpc"
vpc_cidr = "10.0.0.0/16"
public_subnet_cidr = "10.0.1.0/24"
az1 = "ap-south-1a"
az2 = "ap-south-1b"
}


module "ec2" {
source = "./modules/ec2"
subnet_id = module.vpc.public_subnet_id
ami_id = "ami-04808bdb94be6720e"
}


module "s3" {
source = "./modules/s3"
bucket_name = "kailas-demo-bucket"
}


module "rds" {
  source         = "./modules/rds"
  subnet_id      = module.vpc.public_subnet_id      
  rds_subnet_id  = module.vpc.rds_subnet_id        
  username       = "admin"
  password       = "Admin12345"
}

module "cloudfront" {
  source        = "./modules/cloudfront"
  origin_domain = module.s3.bucket_regional_domain_name
}

module "ecs" {
source = "./modules/ecs"
subnet_id = module.vpc.public_subnet_id
}