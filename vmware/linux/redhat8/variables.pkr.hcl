variable "vcenter_server" {
  description = "vCenter server to build the VM on"
}
variable "vcenter_username" {
  description = "Username to authenticate to vCenter"
}
variable "vcenter_password" {
  description = "Password to authenticate to vCenter"
  sensitive = true
  default     = env("PKR_VAR_vcenter_password")
}
variable "vcenter_cluster" {}
variable "vcenter_datacenter" {}
variable "vcenter_host" {}
variable "vcenter_datastore" {}
variable "vcenter_folder" {
  description = "The vcenter folder to store the template"
}
variable "connection_username" {
  default = "username******"
}
variable "connection_password" {
  sensitive = true
  default = env("PKR_VAR_connection_password")
}
variable "vm_hardware_version" {
  default = "13"
}
variable "iso_checksum" {}
variable "os_version" {}
variable "os_iso_path" {}
variable "guest_os_type" {}
variable "root_disk_size" {
  default = 40960
}
variable "nic_type" {
  default = "vmxnet3"
}
variable "vm_network" {}
variable "num_cpu" {
  default = 4
}
variable "num_cores" {
  default = 1
}
variable "vm_ram" {
  default = 4096
}
variable "floppy_files" {
  description = "definim disquetera per al ks.cfg"
  default     = ""
}
variable "cd_files" {
  description = "definim cdrom per al ks.cfg"
  default     = ""
}
variable "os_family" {
  description = "OS Family builds the paths needed for packer"
  default     = ""
}
variable "os_iso_url" {
  description = "The download url for the ISO"
  default     = ""
}
variable "http_directory" {
  description = "The http directory for packer during installation kickstart"
  default     = ""
}
variable "boot_order" {
  description = "boot order definition on vm"
  default     = ""
}
variable "http_port_min" {
  description = ""
  default     = "8000"
}
variable "http_port_max" {
  description = ""
  default     = "8000"
}
variable "boot_command" {} #TODO: Figure out a better way to handle this
