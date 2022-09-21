> sudo apt update && upgrade
> sudo apt install wget curl git htop g++ nano

# making link to windows storage. Create a directory in windows
> mkdir /mnt/e/projects

# if error check.
> ls -l /mnt

# link Create the link to “e:\\projects”.
> ln -s /mnt/e/projects

# verify link point to windows directory.
> ls -l

# Make script in mounted Windows drive called "wsl_setup.sh".
> touch /mnt/e/projects/terminal/wsl_setup.sh

# give it execution permission
> chmod 755 /mnt/e/projects/terminal/wsl_setup.sh

#  install and enable cronie.service
> sudo apt install cronie
> systemctl enable --now cronie.service

# to threshhold charging 
> sudo nano /etc/crontab

# then add following line
> @reboot root echo 60 > /sys/class/power_supply/BAT0/charge_control_end_threshold

# powersaving for linux laptop
> sudo apt install tlp powertop-autotune
> sudo apt install auto-cpufreq
>  systemctl enable auto-cpufreq
>  systemctl start auto-cpufreq
> sudo auto-cpufreq --monitor
> sudo auto-cpufreq --live

# sudo auto-cpufreq --install daemon for apt
> auto-cpufreq --stats
> systemctl status auto-cpufreq
>
> sudo auto-cpufreq --remove daemon for apt

#  install python
> sudo apt install python3
> sudo apt upgrade python3
> sudo apt install python3-pip
> sudo apt install python3-venv

# to use python instead of python3
> echo >> alias python='python3' >> ~/.alias

# Setup  virtualenv
mkdir .virtualenv
> $ pip3 install virtualenvwrapper
> cd ~/.local/bin/ #ls
> vim ~/.zshrc
>export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python3
export WORKON_HOME=$HOME/.virtualenvs
export VIRTUALENVWRAPPER_VIRTUALENV=/home/'username'/.local/bin/virtualenv
source ~/.local/bin/virtualenvwrapper.sh

# How to use virtualenvwrapper
> mkvirtualenv foo #this will make and start foo venv
> deactivate #to deactivate

# to list and switch between virtual environments
> workon or workon + name

# Install jupyter: pip3 install jupyter
> Create alias to launch jupyter without browser from the WSL:

- Open your bash configuration: vim ~/.bashrc
- Add to the end of the file and save/exit:
alias jupyter-notebook="~/.local/bin/jupyter-notebook --no-browser"
- Update your bash profile: source ~/.bashrc
Now you can run a jupyter server jupyter-notebook and access the service with your browser from Windowslocalhost:8888.

# plymouth (bootsplash screen)
> aur -S plymouth

# Make a folder called kameleon-eos then paste all the files into it, then move the folder to
> /usr/share/plymouth/themes

# configure grub
> /etc/default/grub >>
> GRUB_CMDLINE_LINUX_DEFAULT="loglevel=3 quiet splash rd.udev.log_priority=3 vt.global_cursor_default=0"

# regenerate groub configuration file
> sudo grub-mkconfig -o /boot/grub/grub.cfg

# listing default themes
> sudo plymouth-set-default-theme -l

# set theme default
> sudo plymouth-set-default-theme -R kameleon-eos

# set the delay to 0 & theme to kameleon-eos in your
> /etc/plymouth/plymouthd.conf

# add hook "udev plymouth "in mkinitcpio.conf
> /etc/mkinitcpio.conf

# then regenerate your initramfs using
> sudo mkinitcpio -p linux

# list active display manager
> systemctl status display-manager

# disable display manager
> systemctl disable gdm

# reenable display manager with plymouth
> systemctl enable gdm-plymouth.service
> systemctl start gdm-plymouth.service



# Making flask inside Virtual Environment
> cd project/python$ python -m venv venv
> source venv/bin/activate
> pip list
> pip install flask
> flask --version
> pip list
> mkdir pyapp
> cd pyapp/
> touch app1.py
> export FLASK_APP=app.py
> set FLASK_APP=app.py
> export FLASK_ENV=development
> set FLASK_ENV=development
> flask run
> code-runner: Run in terminal for vs code to able to edit

# xrdp for for using linux gui as remote server
> sudo apt -y install xfce4
> sudo apt install xrdp
> sudo cp /etc/xrdp/xrdp.ini /etc/xrdp/xrdp.ini.bak
> sudo sed -i 's/3389/3390/g' /etc/xrdp/xrdp.ini
> sudo sed -i 's/max_bpp=32/#max_bpp=32\nmax_bpp=128/g' /etc/xrdp/xrdp.ini
> sudo sed -i 's/xserverbpp=24/#xserverbpp=24\nxserverbpp=128/g' /etc/xrdp/xrdp.ini
> sudo /etc/init.d/xrdp start

# to view and change shellshows current user default shell
> echo $SHELL

# shows currently running shell
> echo $0 

# shows available shells
> cat /etc/shells 

# installing download zsh and run zsh 
> sudo apt install zsh

# to make zsh as default shell
> sudo nano ~/.bashrc 

# if doing from bash otherwise 
> ~/.profile

# add after last line
> exec zsh 

# select N for default shell
# install oh my zsh
> sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# zsh-theme 
> git clone --depth=1 https://github.com/romkatv/powerlevel10k.git 
> ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/themes/powerlevel10k

# prompt size control
> POWERLEVEL9K_SHORTEN_STRATEGY=truncate_to_last
> POWERLEVEL9K_DIR_MAX_LENGTH=1

# enter q to Quite configuration wizard and p10k to show commands

# tab complete to show current directory and auto select first directory
> zstyle :completion::complete:-command-:: tag-order local-directories -
> zstyle ':completion:*' insert-tab false

