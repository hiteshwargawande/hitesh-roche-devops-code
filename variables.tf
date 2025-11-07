variable "hitesh-ami-id" {
  type = string
  description = "this is my Sydeny aws region ami id"
  #default = "ami-0a25a306450a2cba3"
}

variable "vm-name" {
    type = string
  description = "my aws vm name"
  
}

variable "vm-size" {
    type = string
  description = "my vm size"
  
}

variable "ec2-key-name" {
    type = string
 
  }

  variable "key-size" {
    type = string
 
  
}

  variable "private-key-algo" {
    type = string
 
  
}
variable "my-vpc-id" {
  
}

variable "my-sec-group-name" {
  
}