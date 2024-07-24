os_version = "2022"
os_family  = "windows"
guest_os_type = "windows9Server64Guest"

os_iso_path = "[VMVOL903_5061_Content_Library] isos_packer/windows_fe_release_EVAL_x64FRE_en-us.iso"
vmtools_iso_path = "[VMVOL903_5061_Content_Library] isos_packer/CF_VMware-tools-windows_11.3.0-18090558.iso"

iso_checksum        = ""
root_disk_size      = 60000
cdrom_type          = "ide"
boot_order          = "disk,cdrom"
communicator        = "winrm"
#floppy_files        = ["autounattend.xml", "boot_config/setup.ps1"]
floppy_files        = "autounattend.xml"
winrm_username      = "vagrant"
winrm_password      = "vagrant"
#cd_files            = "unattend.xml"
connection_username = "vagrant"
connection_password = "vagrant"
http_directory      = "boot_config"
http_port_min = 8000
http_port_max = 8000
vm_name = "template"
boot_command = ""
shutdown_command = "shutdown /s /t 10 /f /d p:4:1 /c \"Packer Shutdown\""

