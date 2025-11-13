variable "aws_region" {
  default = "eu-central-1"
}

variable "vpc_cidr" {
  default = "10.0.0.0/16"
}

variable "public_subnet_cidr" {
  default = "10.0.0.0/24"
}

variable "private_subnet_cidr" {
  default = "10.0.1.0/24"
}

variable "instance_type" {
  default = "t3.micro"
}

variable "ami_id" {
  # Ubuntu 22.04 AMI în regiunea selectată
  default = "ami-0699c78c4486e5f1e"
}

variable "key_name" {
  description = "devops-keypair-2"
  default     = "devops-keypair-2"
}
