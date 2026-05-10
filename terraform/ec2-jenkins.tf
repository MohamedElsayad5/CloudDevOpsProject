# resource "aws_instance" "jenkins_server" {

#   ami           = var.ami_id
#   instance_type = var.instance_type

#   subnet_id = aws_subnet.public.id

#   vpc_security_group_ids = [
#     module.security.security_group_id
#   ]

#   key_name = var.key_name

#   associate_public_ip_address = true

#   tags = {
#     Name = "jenkins-server"
#   }
# }