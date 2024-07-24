source "vsphere-iso" "windows2019" {
  # vCenter settings
  vcenter_server      = var.vcenter_server
  username            = var.vcenter_username
  password            = var.vcenter_password
  insecure_connection = true #TODO: Add ca to docker
  cluster             = var.vcenter_cluster
  datacenter          = var.vcenter_datacenter
  host                = var.vcenter_host
  datastore           = var.vcenter_datastore
  convert_to_template = true
  #ip_wait_timeout     = 1h
  folder              = var.vcenter_folder

  # VM Settings
  #headless               = var.headless
  ip_wait_timeout        = "45m"
  communicator           = "winrm"
  winrm_username         = var.winrm_username
  winrm_password         = var.winrm_password
  winrm_timeout         = "12h"
  winrm_port            = "5985"
  shutdown_command      = "shutdown /s /t 10 /f /d p:4:1 /c \"Packer Shutdown\""
  shutdown_timeout      = "15m"
  vm_version            = var.vm_hardware_version
  #iso_paths              = [var.os_iso_path]

  iso_paths              = [
    var.os_iso_path,
    var.vmtools_iso_path
  ]

  #vmtools_iso_paths              = [var.vmtools_iso_path]
  iso_checksum           = var.iso_checksum
  vm_name                = "${var.os_family}-${var.os_version}-{{ isotime \"2006-01-02\" }}"
  guest_os_type         = var.guest_os_type
  disk_controller_type  = ["pvscsi"] # Windows requires vmware tools drivers for pvscsi to work
  network_adapters {
    # For windows, the vmware tools network drivers are required to be connected by floppy before tools is installed
    network = var.vm_network
    network_card = var.nic_type
  }
  storage {
    disk_size = var.root_disk_size
    disk_thin_provisioned = true
  }
  CPUs                  = var.num_cpu
  cpu_cores             = var.num_cores
  CPU_hot_plug          = true
  RAM                   = var.vm_ram
  RAM_hot_plug          = true
  floppy_files           = [
    "./drivers/",
    "./boot_config/autounattend.xml",
    "./scripts/winrm.bat",
    #"./boot_config/setup.ps1",
    "./scripts/config-network.cmd",
    "./scripts/Install-VMWareTools.cmd",
    "./scripts/configureforansible.ps1",
    "./scripts/sysprep.ps1",
    "./scripts/winrm.cmd",
    "./scripts/rdp.cmd",
    "./scripts/winrmansible.ps1"
    ]
  #floppy_img_path        = "${var.floppy_pvscsi}"

  #cd_files           = [
    #"./scripts/winrm.bat"
    #"./boot_config/setup.ps1",
    #"./scripts/Install-VMWareTools.ps1",
    #"./scripts/"
    #"../vmware_tools/"
    #"./drivers/"
    #]
#  ssh_port               = "22"
#  ssh_handshake_attempts = "20"
#  boot_wait    = "5s"
#  boot_command = var.boot_command
}

build {
  sources = [
    "source.vsphere-iso.windows2019",
  ]
#  provisioner "shell" {
#    execute_command = "echo '${var.connection_password}' | {{.Vars}} sudo -S -E sh -eux '{{.Path}}'" # This runs the scripts with sudo
    #scripts = [
#     #"scripts/ansible-redhat.sh",
      #"scripts/Install-VMWareTools.ps1"
      #"scripts/vmware-redhat.sh",
      #"scripts/yum-update.sh",
      #"scripts/cleanup-redhat.sh",
      #"scripts/clean-ssh-hostkeys.sh"
    #]
#  }
  provisioner "windows-shell" {
    inline = ["ipconfig /all"]
  }
}

