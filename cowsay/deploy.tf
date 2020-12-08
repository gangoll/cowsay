provider "aws" {
  access_key = "AKIAX6V6UDNZKEBXQYVU"
  secret_key = "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"
  region  = "eu-central-1"
  
}
resource "aws_instance" "cowsay" {
  ami = "ami-0502e817a62226e03"
 instance_type = "t2.micro"
 subnet_id  = aws_subnet.main.id
 associate_public_ip_address = true
 security_groups = ["${aws_security_group.main.id}"]
 key_name = "key"
 tags = {
    Name = "jenkins"
    }
 connection {
    type     = "ssh"
    user     = "ubuntu"
    private_key = file("authorization/key.pem")
    host     = aws_instance.cowsay.public_ip
  }

  provisioner "file" {
    source      = "cowsay/src"
    destination = "~/src"
  }
   provisioner "file" {
    source      = "cowsay/cowsay_installation.sh"
    destination = "~/cowsay_installation.sh"
  }

   provisioner "remote-exec" {
    inline = [
    
     "chmod 777 cowsay_installation.sh & ./cowsay_installation.sh",

    ]
    
  }

  
   
}
output "instance_ip" {
  description = "The public ip for ssh access"
  value       = aws_instance.jenkins.public_ip
  
}