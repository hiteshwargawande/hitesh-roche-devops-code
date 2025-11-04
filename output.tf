#public ip of my ec2 vm
output "hitesh-ec2-publicIP" {
  value = aws_instance.example.public_ip
}


#ec2 machine instance id
output "hitesh-ec2ID" {

    value = aws_instance.example.id
}

#storing data in local system
resource "local_file" "my_ip_file" {
      content  = aws_instance.example.public_ip
      filename = "public_ip.txt"
    }