variable "group_name" {
  type = string
  description = "name of the security group"
  default = "test-security-group"
}

variable "group_description" {
  type = string
  description = "description of the group"
  default = "test-description"
}

variable "private_subnets" {
  default = "10.0.0.192/26"
}

variable "public_subnets" {
  default = "10.0.0.128/26"
}
variable "lb_name" {
    type = string
    description = "name for the lb"
    default = "test-lb"
}
variable "lb_type" {
    type = string
    description = "type of the lb"
    default = "application"
}
variable "project" {
    type = string
    description = "name for the project"
    default = "test"
}
variable "logs_bucket_name" {
    type = string
    description = "name of the logs bucket"
    default = "test-logs-bucket-test"
}