provider "aws" {
  region = "us-east-2"
  shared_credentials_file = "/home/matt/.aws/credentials"
  
  #profile                 = "customprofile"

}

resource "aws_instance" "example" {
ami = "ami-83a713e0"
instance_type = "t2.micro"
tags {
Name = "your-instance"
}
}

###data "aws_ami" "ubuntu" {
  #most_recent = true

  #filter {
    #name   = "name"
    #values = ["ubuntu/images/hvm-ssd/ubuntu-trusty-14.04-amd64-server-*"]
  #}

  ####filter {
    #name   = "virtualization-type"
    #values = ["hvm"]
  #}

  #owners = ["859160039192  "]
###}

#resource "aws_instance" "web" {
  #ami           = "${data.aws_ami.ubuntu.id}"
  #instance_type = "t2.micro"

  #tags {
    #Name = "HelloWorld"
 # }
#}
#output "ip"{
#value= "${aws_instance.web.public_ip}"
#}
