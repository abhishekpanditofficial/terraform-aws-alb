resource "aws_lb" "alb" {
  name               = var.lb_name
  internal           = false
  load_balancer_type = var.lb_type
  security_groups    = [var.security_group_id]
  subnets            = [var.public_subnet_id,var.private_subnet_id]

  

  # access_logs {
  #   bucket  = var.s3_bucket_bucket
  #   prefix  = "test-lb"
  #   enabled = true
  # }

  tags = {
    Environment = "production"
  }
}