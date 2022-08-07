source "amazon-ebs" "linuxvm" {
  # AWS settings
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key
  region = var.aws_region

  # AMI settings
  #source_ami = "ami-00696177f87436f"
  source_ami = "ami-xx0f1c02e5e4d9dxx" # ami del marketplace aws (redhat 8)
  ami_name      = "Linuxpacker-${var.os_version}-{{ isotime \"2006-01-02\" }}"
  ami_description = "packer test template for AWS Linux"
  instance_type = var.instance_type
  #volume_size = var.volume_size
  #skip_create_ami = false

  #associate_public_ip_address = ""
  #availability_zone = ""
  ssh_timeout  = "15m"

  #source_ami_filter {
  #  filters = {
  #    name                = "redhat_packer"
  #    root-device-type    = "ebs"
  #    virtualization-type = "hvm"
  #  }
  #  most_recent = true
  #  owners      = ["955047888725"]
  #}
  ssh_username = "ec2-user"
  #ssh_username = "root"
  #ssh_password = var.connection_password

  assume_role {
      role_arn     = "arn:aws:iam::999912643999:role/couami2id001-packer"
      session_name = "packer"
      #session_name = "SESSION_NAME"
      #external_id  = "EXTERNAL_ID"
      external_id  = "packer"
  }
  vpc_id = "vpc-xx60a2xx"
  subnet_id = "subnet-xx222xx"
  ssh_interface = "private_ip"
  #ssh_interface = "session_manager"
  communicator = "ssh"

  tags = {
    os_version = var.os_version
}
}


build {
  sources = ["source.amazon-ebs.linuxvm"]

  #  provisioner "shell" {
  #filters         = ["exclude:$_.Title -like '*Preview*'", "include:$true"]
  #search_criteria = "IsInstalled=0"
  #update_limit    = 25
  #    inline = [
  #      echo "hello world",
  #    ]
  #  }
  #  provisioner "linux-restart" {
  #    restart_check_command = "powershell -command \"&amp; {Write-Output 'Machine restarted.'}\""
  #  }
}
