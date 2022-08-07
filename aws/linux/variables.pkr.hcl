variable "aws_access_key" {
  default   = env("PKR_VAR_aws_access_key")
  sensitive = true
}

variable "aws_secret_key" {
  default   = env("PKR_VAR_aws_secret_key")
  sensitive = true
}

variable "connection_password" {
  default   = env("PKR_VAR_connection_password")
  sensitive = true
}

variable "ami_name" {
  type    = string
  default = "custom-linux-{{timestamp}}"
}

variable "aws_region" {
  type    = string
  default = "eu-west-1"
}

variable "subnet_id" {
  type    = string
  default = ""
}

variable "managed_image_name" {
  type    = string
  default = ""
}

variable "instance_type" {
  type    = string
  default = ""
}

variable "os_version" {
  type    = string
  default = ""
}

variable "skip_create_ami" {
  type    = string
  default = ""
}

variable "ami_description" {
  type    = string
  default = ""
}

variable "source_ami" {
  type    = string
  default = ""
}

variable "region" {
  type    = string
  default = ""
}

variable "volume_size" {
  type    = string
  default = "10"
}
