os_version = "9"
os_family  = "redhat"
#guest_os_type       = "redhat8_64Guest"
guest_os_type = "centos7_64Guest"

os_iso_path = "[VMVOL903_5061_Content_Library] isos_packer/rhel-baseos-9.0-x86_64-dvd.iso"
iso_checksum        = "47AB14778C823ACAE2EE6D365D76A9AED3F95BB8D0ADD23A06536B58BB5293C0"
root_disk_size      = 34000
boot_order          = "cdrom,disk"
floppy_files        = "./ks.cfg"
cd_files            = "./ks.cfg"
connection_username = "vagrant"
connection_password = "vagrant"
http_directory      = "boot_config"
http_port_min = 8000
http_port_max = 8000
boot_command = [
"<tab><wait> inst.text inst.ks=http://repos.jpluja.com/gitlab/repos/packer_vmware_linux/raw/redhat9/boot_config/redhat/ks.cfg?raw ip=10.230.0.28::10.230.0.1:255.255.248.0:template:eth0:none nameserver=10.230.0.6 biosdevname=0 net.ifnames=0 <enter><wait>"
]
