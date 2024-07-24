os_version = "8"
os_family  = "redhat"
guest_os_type = "centos7_64Guest"

os_iso_path = "[VOL900_Content_Library] isos_packer/rhel-server-8.1-x86_64-dvd.iso"

iso_checksum        = "47AB14778C823ACAE2EE6D365D76A9AED3F95BB8D0ADD23A06536B58BB5293C0"
#root_disk_size      = 34000
#root_disk_size      = var.root_disk_size
boot_order          = "cdrom,disk"
#floppy_files        = "./ks.cfg"
#connection_username = "vagrant"
#connection_password = "vagrant"
#http_directory      = "boot_config"
#cal adaptar el boot_command al cas que sigui
boot_command = [
"<tab><wait> text ks=http://repos.jpluja.com/bitbucket/projects/packer/repos/packer_vmware_linux/raw/redhat7/boot_config/redhat/ks.cfg?raw ip=172.27.90.20::172.27.90.1:255.255.248.0:template:eth0:none nameserver=172.24.17.4 biosdevname=0 net.ifnames=0<enter><wait>"
]
