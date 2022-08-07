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
  default = "username1"
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
variable "vmtools_iso_path" {}
#variable "iso_paths" {}
variable "guest_os_type" {}
variable "root_disk_size" {
  default = 48000
}
variable "nic_type" {
  #default = "vmxnet3"
  default = "e1000e"
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
  description = "The boot order for vm"
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
variable "communicator" {
  description = ""
  default     = "winrm"
}
variable "cdrom_type" {
  description = ""
  default     = "ide"
}
variable "floppy_pvscsi" {
  description = ""
  default     = ""
}
variable "winrm_username" {
  description = ""
  default     = "username1"
}
variable "winrm_password" {
  description = ""
  sensitive = true
  default     = env("PKR_VAR_winrm_password")
}
variable "boot_command" {} #TODO: Figure out a better way to handle this
variable "vm_name" {
  description = ""
  default     = ""
}
variable "shutdown_command" {
  description = ""
  default     = ""
}
variable "autounattend" {
  description = ""
  default     = "boot_config/autounattend.xml"
}
variable "headless" {
  description = ""
  default     = ""
}
