resource "tls_private_key" "example" {
    algorithm = var.private-key-algo
    rsa_bits = var.key-size

  
}

#save my provate key
resource "local_file" "private-key-data" {
    content = tls_private_key.example.private_key_pem
    filename = "${path.module}/hitesh-key.pem"
    file_permission = 0400
  
}

#sending public key to aws cloud account
resource "aws_key_pair" "example" {
  public_key = tls_private_key.example.public_key_openssh
  key_name = "hitesh-privatekey"
}