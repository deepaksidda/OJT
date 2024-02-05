provider "aws" {
  region = "ap-south-1"  
}

resource "aws_launch_template" "example" {
  name               = "my-launch-template"
  block_device_mappings {
    device_name = "/dev/sdf"

    ebs {
      volume_size = 10
    }
  }

   network_interfaces {
    associate_public_ip_address = true
  }

  placement {
    availability_zone = "ap-south-1a"
  }

  vpc_security_group_ids = ["sg-0c912c5e1c1baa3ff"]

  tag_specifications {
    resource_type = "instance"

    tags = {
      Name = "test"
    }
  }

  instance_type = "t2.micro"

  key_name = "deepak"  

  image_id = var.ami_id  
}
