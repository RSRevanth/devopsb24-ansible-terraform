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
        echo 'ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQC8Q8qe81qeUu9Sqc8v+OsQAdFh2a2naw8Rua9pR/+rHVlflj6ipY2FssPhQFjA65ltXQ24DC+yT75UpxfjcWWiLpzIC3H3KOzE8BeskFhb3F3O/lZEfSejKBOUoYMcD/BbmsixoUbhhj3QfXvDsvn3TNFRM6Kvt6ISB1FT7GLY/DlwVLqSUM0db9JWiYY0ObrS3AlD8dI+P7QwkbK6JGnDIpmA2Eh/xRvxojp/vPC3PCHdOGgXa7JxdShHpJGrQXT57ItGAi4Ij2RQjSXhIyVrPylkaeXnRssYYyHKwrRuxZv/isGz8MXLvxNqdlrznKnEtzI9bu84VdwFAeyRns0cUC2MDNWzVqIhAj1HCJ9qjQ99R0btpqo/fE1EHV11j8tCKDiBJoG/lDiaKgtcwwY+8IntdMrgjbqWqPuuHOl6KLu2gJVkyoZzQN0dgNEy92lTTIoZ2n5QmCWJYIL5RBm8rWYjwZdLDlI8EMZ5O5sB0egLAlXDJNNjK4qanq/q9qc= jenkins@ip-172-31-95-160' >>   /home/ubuntu/.ssh/authorized_keys
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
        echo 'ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQC8Q8qe81qeUu9Sqc8v+OsQAdFh2a2naw8Rua9pR/+rHVlflj6ipY2FssPhQFjA65ltXQ24DC+yT75UpxfjcWWiLpzIC3H3KOzE8BeskFhb3F3O/lZEfSejKBOUoYMcD/BbmsixoUbhhj3QfXvDsvn3TNFRM6Kvt6ISB1FT7GLY/DlwVLqSUM0db9JWiYY0ObrS3AlD8dI+P7QwkbK6JGnDIpmA2Eh/xRvxojp/vPC3PCHdOGgXa7JxdShHpJGrQXT57ItGAi4Ij2RQjSXhIyVrPylkaeXnRssYYyHKwrRuxZv/isGz8MXLvxNqdlrznKnEtzI9bu84VdwFAeyRns0cUC2MDNWzVqIhAj1HCJ9qjQ99R0btpqo/fE1EHV11j8tCKDiBJoG/lDiaKgtcwwY+8IntdMrgjbqWqPuuHOl6KLu2gJVkyoZzQN0dgNEy92lTTIoZ2n5QmCWJYIL5RBm8rWYjwZdLDlI8EMZ5O5sB0egLAlXDJNNjK4qanq/q9qc= jenkins@ip-172-31-95-160' >>   /home/ubuntu/.ssh/authorized_keys
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
        echo 'ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQC8Q8qe81qeUu9Sqc8v+OsQAdFh2a2naw8Rua9pR/+rHVlflj6ipY2FssPhQFjA65ltXQ24DC+yT75UpxfjcWWiLpzIC3H3KOzE8BeskFhb3F3O/lZEfSejKBOUoYMcD/BbmsixoUbhhj3QfXvDsvn3TNFRM6Kvt6ISB1FT7GLY/DlwVLqSUM0db9JWiYY0ObrS3AlD8dI+P7QwkbK6JGnDIpmA2Eh/xRvxojp/vPC3PCHdOGgXa7JxdShHpJGrQXT57ItGAi4Ij2RQjSXhIyVrPylkaeXnRssYYyHKwrRuxZv/isGz8MXLvxNqdlrznKnEtzI9bu84VdwFAeyRns0cUC2MDNWzVqIhAj1HCJ9qjQ99R0btpqo/fE1EHV11j8tCKDiBJoG/lDiaKgtcwwY+8IntdMrgjbqWqPuuHOl6KLu2gJVkyoZzQN0dgNEy92lTTIoZ2n5QmCWJYIL5RBm8rWYjwZdLDlI8EMZ5O5sB0egLAlXDJNNjK4qanq/q9qc= jenkins@ip-172-31-95-160' >>   /home/ubuntu/.ssh/authorized_keys
        EOF
}
