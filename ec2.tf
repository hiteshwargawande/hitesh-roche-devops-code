#creating ec2 vm
resource "aws_instance" "example" {
    #ami = "ami-0a25a306450a2cba3"
    ami = var.hitesh-ami-id
    instance_type = var.vm-size
    key_name = aws_key_pair.example.key_name
    #security_groups = [ aws_security_group.allow_tls.name]
    vpc_security_group_ids = [ aws_security_group.allow_tls.id ]
    tags = {
      "Name" = var.vm-name
    }

    #provision
    provisioner "remote-exec" {
      inline = [ 
        "sudo dnf install git https -y",
        "mkdir -p hello/terraform"
      ] 
      
    }
  connection {
    type = "ssh"
    user = "ec2-user"
    host = self.public_ip
   
    # content of private key data
    private_key = tls_private_key.example.private_key_pem
  }
}


