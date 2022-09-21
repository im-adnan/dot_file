sudo apt-get update

sudo apt install qemu qemu-kvm libvirt-clients libvirt-daemon-system bridge-utils virt-manager
apt install x11-apps

sudo systemctl enable --now libvirtd
sudo systemctl enable --now virtlogd

sudo apt install git
git clone https://github.com/DamionGans/ubuntu-...
cd ubuntu-wsl2-systemd-script/
bash ubuntu-wsl2-systemd-script.sh
bash ubuntu-wsl2-systemd-script.sh --force

wsl --shutdown -d "your distribution name"

re-start the instance

sudo systemctl enable --now libvirtd
sudo systemctl enable --now virtlogd

virt-manager




# hardware check
LC_ALL=C lscpu | grep Virtualization
# how to know hardware virtualization is on
egrep -c '(vmx|svm)' /proc/cpuinfo
# if return greater than 0  its on, 

# Search of Kernel modules
zgrep CONFIG_KVM /proc/config.gz

# Install kvm
sudo pacman -S virt-manager qemu vde2 ebtables dnsmasq bridge-utils openbsd-netcat

# enable kvm
sudo systemctl enable libvirtd.service
# start kvm
sudo systemctl start libvirtd.service

# Part 2: Configuring KVM
# To continue using KVM with your standard Linux account, you can do so by modifying the libvirtd.conf file. # Access the file by entering the following:

$ sudo pacman -S vim
$ sudo vim /etc/libvirt/libvirtd.conf

# Between line 80-90, there should be the term “lineabout unix_sock_group.” You will change this to libvirt.

# unix_sock_group = "libvirt"
# Jump to the lines between 100-110 and change the unix_sock_rw_perms to = 0770

# unix_sock_rw_perms = "0770"
# Then, issue the following code to include your standard Linux account with libvirt.

$ sudo usermod -a -G libvirt $(whoami)

$ newgrp libvirt

# Reboot the libvirt service to apply changes. To do so, issue the following code:

$ sudo systemctl restart libvirtd.service

# You can now use your Linux account to use KVM.

# To create virtual machines within a virtual machine, enable Nested Virtualization by entering the following:

$ sudo modprobe -r kvm_intel
$ sudo modprobe kvm_intel nested=1

To apply these changes, enter:

$ echo "options kvm-intel nested=1" | sudo tee /etc/modprobe.d/kvm-intel.conf




