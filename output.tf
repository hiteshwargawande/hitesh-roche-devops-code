#public ip of my ec2 vm
output "hitesh-ec2-publicIP" {
  value = aws_instance.example.public_ip
}


#ec2 machine instance id
output "hitesh-ec2ID" {

    value = aws_instance.example.id
}

#storing data in local system
resource "local_file" "myip_file" {
      content  = aws_instance.example.public_ip
      filename = "myip_ip.txt"
      # making manual dependency
      depends_on = [ aws_instance.example ]
    }