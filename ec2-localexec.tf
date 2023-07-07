resource "aws_instance" "servers" {
  count = 3
  ami                         = "ami-0261755bbcb8c4a84"
  availability_zone           = "us-east-1a"
  instance_type               = "t2.micro"
  key_name                    = "kops"
  subnet_id                   = aws_subnet.subnet1-public.id
  vpc_security_group_ids      = ["${aws_security_group.allow_all.id}"]
  associate_public_ip_address = true
  tags = {
    Name       = "LocalExec-Server-${count.index}"
    Env        = "Prod"
    Owner      = "Sree"
    CostCenter = "ABCD"
  }
  user_data = <<-EOF
      #!/bin/bash
      sudo apt-get update
      echo 'ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQCrzgR0os8f1tOeOzQ9AGS9cGHX2bn+6d2cFwh8KuBGPe2/KtdeBsMzS22gxQbNusRsTesseONqAppobG89HN3IGhojP5xnnUyQfptfI191vHyR6+1JEh+Vk/QDAmhQ1VczGvX8SoJoNB5ut7/7PfvmSSmRL6vMsHFcd0mRz6YPx7+QC+ZzZe+Jig3qGS/kUgZgsI+PWi2Ap/1FGcjg++yquN1T0iUiHP295pUlPmq3tS8XKMUEpH+LhnRGO2zTghlo0B/Uyqx+lcmvv977q8GExE0YN4hi/XBmH1Px5n9ic8hCWQPQIFJBfeSFbT5s8YYidwgF/0Xl3QOLQdOy1oBFqEqlnZ0Bim38ti0HBcCp9mHnaLyOjOJQj0V/d08O3vv4ZeERm701iDAEhIhMibyeq2lV/kuwmT/nLgF7Iao+08KLmHXyi8JS+TETBwmVX014ScW271HhGFc9DfWZXwUDOT4u12YbIXZeXPwlhvJoS3GotfZXScu0g+j1nslVOZk= root@ip-172-31-17-155' >>   /home/ubuntu/.ssh/authorized_keys
  EOF
  /* provisioner "local-exec" {
    command = "ANSIBLE_HOST_KEY_CHECKING=False ansible-playbook -u ubuntu -b -i '${aws_instance.web-1.*.public_ip},'  nginx-playbook-localexec.yml"
  } */
}

resource "null_resource" "cluster" {
  count = 3
  provisioner "local-exec" {
    command = "ANSIBLE_HOST_KEY_CHECKING=False ansible-playbook -u ubuntu -b -i '${element(aws_instance.servers.*.public_ip, count.index)},'  nginx-playbook-localexec.yml"
  }
}
