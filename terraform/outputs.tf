output "vpc_id" { value = module.vpc.vpc_id }
output "public_subnet_ids" { value = module.vpc.public_subnets }
output "private_subnet_ids" { value = module.vpc.private_subnets }

output "sg_web_id" { value = aws_security_group.web.id }
output "sg_private_id" { value = aws_security_group.private.id }