output "vpc_id" {
    value= module.terraform_aws_alb.vpc_id
}
output "vpc_cidr_block" {
    value= module.terraform_aws_alb.vpc_cidr_block
}
output "security_group_arn" {
    value= module.terraform_aws_alb.security_group_arn
}
output "security_vpc_id" {
    value= module.terraform_aws_alb.security_vpc_id
}
output "s3_bucket_id" {
    value= module.terraform_aws_alb.s3_bucket_id
}

output "alb_id" {
    value= module.terraform_aws_alb.alb_id
}
output "alb_name" {
    value= module.terraform_aws_alb.alb_name
}
