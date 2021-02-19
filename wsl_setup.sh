
#update and upgrade packages.
#sudo apt update
#sudo apt upgrade
#making link to windows storage.
#create a directory in windows
#mkdir /mnt/e/projects
#if error check.
ls -l /mnt
#link Create the link to “e:\\projects”.
ln -s /mnt/e/projects
#verify link point to windows directory.
ls -l
#Make script in mounted Windows drive called "wsl_setup.sh".
#touch /mnt/e/projects/terminal/wsl_setup.sh
#give it execution permission
#chmod 755 /mnt/e/projects/terminal/wsl_setup.sh
#install git, gcc.
sudo apt install git
sudo apt install gcc-c++
sudo apt install build-essential gdb
#install python
sudo apt install python3
sudo apt upgrade python3
#sudo apt install python3-pip
#sudo apt install python3-venv
#to use python instead of python3
echo >> alias python='python3' >> ~/.alias
#Venv And flask
cd
#cd project/python$ python -m venv venv
#source venv/bin/activate
#pip list
#pip install flask
#flask --version
#pip list
#mkdir pyapp
#cd pyapp/
#touch app1.py
#export FLASK_APP=app.py
#set FLASK_APP=app.py
#export FLASK_ENV=development
#set FLASK_ENV=development
#flask run
#code-runner: Run in terminal for vs code to able to edit

#xrdp for for using linux gui as remote server
#sudo apt -y install xfce4
#sudo apt install xrdp
#sudo cp /etc/xrdp/xrdp.ini /etc/xrdp/xrdp.ini.bak
#sudo sed -i 's/3389/3390/g' /etc/xrdp/xrdp.ini
#sudo sed -i 's/max_bpp=32/#max_bpp=32\nmax_bpp=128/g' /etc/xrdp/xrdp.ini
#sudo sed -i 's/xserverbpp=24/#xserverbpp=24\nxserverbpp=128/g' /etc/xrdp/xrdp.ini
#sudo /etc/init.d/xrdp start
#command to fetch things from url.
sudo apt install curl
#installing zsh download nerd font extract and install
sudo apt install zsh -y
#install oh my zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
#zsh-theme 
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/themes/powerlevel10k
#enter q to Quite configuration wizard and p10k to show commands
sudo apt install wget
sudo apt install htop
sudo apt install nano
#Haker like text effect
# git clone https://github.com/bartobri/no-more-secrets.git
# cd ./no-more-secrets
# make nms
# make sneakers             ## Optional
# sudo make install
# To remove 
# sudo make uninstall