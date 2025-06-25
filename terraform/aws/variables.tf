variable "region" {
  type    = string
  default = "ap-south-1"
}

variable "ami_id" {
  type = string
  description = "The AMI ID for your EC2 instance"
}

variable "instance_type" {
  type    = string
  default = "t2.micro"
}

variable "key_name" {
  default = "my-aws-key"
  type = string
  description = "The AWS EC2 Key Pair name"
}

