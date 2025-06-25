resource "aws_instance" "web" {
  ami           = var.ami_id
  instance_type = var.instance_type
  key_name      = var.key_name

  tags = {
    Name = "aws-multicloud-web"
  }
}

resource "aws_key_pair" "deployer" {
  key_name   = var.key_name
  public_key = file("/Users/ansumannayak/Multi_Cloud_Infra/terraform/aws/my-aws-key.pub")
}
