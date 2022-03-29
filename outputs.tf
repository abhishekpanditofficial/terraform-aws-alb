output "vpc_id" {
    value= module.terraform_aws_vpc.vpc_id
}
output "vpc_cidr_block" {
    value= module.terraform_aws_vpc.vpc_cidr_block
}
output "security_group_arn" {
    value= module.terraform_aws_securitygroup.security_group_arn
}
output "security_vpc_id" {
    value= module.terraform_aws_securitygroup.security_vpc_id
}
output "s3_bucket_id" {
    value= module.aws_s3_logs.bucket_id
}

output "alb_id" {
    value= module.terraform_aws_lb.alb_id
}
output "alb_name" {
    value= module.terraform_aws_lb.alb_name
}
