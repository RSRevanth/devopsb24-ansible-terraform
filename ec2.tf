resource "aws_instance" "web-1" {
  ami                         = "ami-0261755bbcb8c4a84"
  availability_zone           = "us-east-1a"
  instance_type               = "t2.micro"
  key_name                    = "kops"
  subnet_id                   = aws_subnet.subnet1-public.id
  vpc_security_group_ids      = ["${aws_security_group.allow_all.id}"]
  associate_public_ip_address = true
  tags = {
    Name       = "Server-1"
    Env        = "Prod"
    Owner      = "Sree"
    CostCenter = "ABCD"
  }
  user_data = <<-EOF
        #!/bin/bash
        sudo apt-get update
        echo 'ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDp13RaAdC9OiSBrbbpMHWKXeMwMB/gSQNMyR+8xLMYnp+Q6Ad6tio6Psb4xoLvRJBwIebJ20ecqWrP1852eLvQaeRGRBYxw3hcUJaj+PBItsRYIRyQoXyOWSxy+RoRl4mURa982+bZ4q0uted7RFYoFOGqyWxOHhh/Cu3D0sOO0z2ACbpcCozIyUB4W0AueLcfmk+oMHOb33gfX150qs9QhASZ8yEvR7NcjoEp/kTQP5RX/oZEIuSQ8Z/euSx8L9poXBb6xQ9uNKj7wmea3NaIELCIrkQjKFVhHbSqERP2WdXGP0hmcwmUcKeuKEnuojIUiddP0z+EZL+8rrXMMUU7kCbDVa8ipE1YB6UB6K0XIOe4HrwWet/2UqPCyXArwhRAE9/UOgdl3H+f+VWDvzsIrNqm09CIB1wJnM0PmoYvYQZtV/b2I5UBg0ACMTFphPwNU9smT4bZcPI+Gw4kzAITV1BNl5+vK7vFySJYWjKKaypiz7DP7dflshet0WmZd+k= root@ip-172-31-28-151' >>   /home/ubuntu/.ssh/authorized_keys
        EOF
}


resource "aws_instance" "web-2" {
  #count                       = 3
  ami                         = "ami-0261755bbcb8c4a84"
  availability_zone           = "us-east-1a"
  instance_type               = "t2.micro"
  key_name                    = "kops"
  subnet_id                   = aws_subnet.subnet1-public.id
  vpc_security_group_ids      = ["${aws_security_group.allow_all.id}"]
  associate_public_ip_address = true
  tags = {
    Name       = "Server-2"
    Env        = "Prod"
    Owner      = "Sree"
    CostCenter = "ABCD"
  }
  user_data = <<-EOF
        #!/bin/bash
        sudo apt-get update
        echo 'ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDp13RaAdC9OiSBrbbpMHWKXeMwMB/gSQNMyR+8xLMYnp+Q6Ad6tio6Psb4xoLvRJBwIebJ20ecqWrP1852eLvQaeRGRBYxw3hcUJaj+PBItsRYIRyQoXyOWSxy+RoRl4mURa982+bZ4q0uted7RFYoFOGqyWxOHhh/Cu3D0sOO0z2ACbpcCozIyUB4W0AueLcfmk+oMHOb33gfX150qs9QhASZ8yEvR7NcjoEp/kTQP5RX/oZEIuSQ8Z/euSx8L9poXBb6xQ9uNKj7wmea3NaIELCIrkQjKFVhHbSqERP2WdXGP0hmcwmUcKeuKEnuojIUiddP0z+EZL+8rrXMMUU7kCbDVa8ipE1YB6UB6K0XIOe4HrwWet/2UqPCyXArwhRAE9/UOgdl3H+f+VWDvzsIrNqm09CIB1wJnM0PmoYvYQZtV/b2I5UBg0ACMTFphPwNU9smT4bZcPI+Gw4kzAITV1BNl5+vK7vFySJYWjKKaypiz7DP7dflshet0WmZd+k= root@ip-172-31-28-151' >>   /home/ubuntu/.ssh/authorized_keys
        EOF
}


resource "aws_instance" "web-3" {
  #count                       = 2
  ami                         = "ami-0261755bbcb8c4a84"
  availability_zone           = "us-east-1a"
  instance_type               = "t2.micro"
  key_name                    = "kops"
  subnet_id                   = aws_subnet.subnet1-public.id
  vpc_security_group_ids      = ["${aws_security_group.allow_all.id}"]
  associate_public_ip_address = true
  tags = {
    Name       = "Server-3"
    Env        = "Prod"
    Owner      = "Sree"
    CostCenter = "ABCD"
  }
  user_data = <<-EOF
        #!/bin/bash
        sudo apt-get update
        echo 'ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDp13RaAdC9OiSBrbbpMHWKXeMwMB/gSQNMyR+8xLMYnp+Q6Ad6tio6Psb4xoLvRJBwIebJ20ecqWrP1852eLvQaeRGRBYxw3hcUJaj+PBItsRYIRyQoXyOWSxy+RoRl4mURa982+bZ4q0uted7RFYoFOGqyWxOHhh/Cu3D0sOO0z2ACbpcCozIyUB4W0AueLcfmk+oMHOb33gfX150qs9QhASZ8yEvR7NcjoEp/kTQP5RX/oZEIuSQ8Z/euSx8L9poXBb6xQ9uNKj7wmea3NaIELCIrkQjKFVhHbSqERP2WdXGP0hmcwmUcKeuKEnuojIUiddP0z+EZL+8rrXMMUU7kCbDVa8ipE1YB6UB6K0XIOe4HrwWet/2UqPCyXArwhRAE9/UOgdl3H+f+VWDvzsIrNqm09CIB1wJnM0PmoYvYQZtV/b2I5UBg0ACMTFphPwNU9smT4bZcPI+Gw4kzAITV1BNl5+vK7vFySJYWjKKaypiz7DP7dflshet0WmZd+k= root@ip-172-31-28-151' >>   /home/ubuntu/.ssh/authorized_keys
        EOF
}
