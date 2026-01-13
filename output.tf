output "vpc_name" {
  value = module.vpc.vpc_name
}

output "ec2_instance_name" {
  value = module.ec2.instance_name
}

output "s3_bucket_name" {
  value = module.s3.bucket_name
}

output "rds_username" {
  value = module.rds.username
}

output "cloudfront_domain" {
  value = module.cloudfront.domain_name
}
