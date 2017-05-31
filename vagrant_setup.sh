#!/bin/bash

sudo apt-get -y update
sudo apt-get -y upgrade

sudo apt-get -y install python3-pip
sudo apt-get -y install tmux
sudo apt-get -y install gdb gdb-multiarch
sudo apt-get -y install unzip
sudo apt-get -y install foremost
sudo apt-get -y install libssl-dev
sudo apt-get -y install xterm

export TERM=xterm

# Install pwntools
sudo apt-get -y install python2.7 python-pip python-dev git
sudo pip3 install pwntools
sudo pip2 install pwntools

cd /home/vagrant
mkdir tools
cd tools

# Install peda
git clone https://github.com/longld/peda.git ~/tools/peda
echo "source ~/tools/peda/peda.py" >> ~/.gdbinit

#git clone https://github.com/zachriggle/pwndbg
#echo source `pwd`/pwndbg/gdbinit.py >> ~/.gdbinit

# Capstone for pwndbg
#git clone https://github.com/aquynh/capstone
#cd capstone
#git checkout -t origin/next
#sudo ./make.sh install
#cd bindings/python
#sudo python3 setup.py install # Ubuntu 14.04+, GDB uses Python3

# pycparser for pwndbg
#sudo pip3 install pycparser # Use pip3 for Python3

# Install radare2
if ! type "r2" > /dev/null; then
    git clone https://github.com/radare/radare2
    cd radare2
    ./sys/install.sh
fi

# Install binwalk
if ! type "binwalk" > /dev/null; then
    sudo pip2 install binwalk
fi

# My Personal configs

# vim pathogen
mkdir -p /home/vagrant/.vim/autoload ~/.vim/bundle && \
curl -LSso /home/vagrant/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

# youcompleteme
sudo apt-get -y install build-essential cmake python-dev python3-dev

# For ctf uses, C family and python completer is enough.
mkdir /home/vagrant/.vim/bundle
cd /home/vagrant/.vim/bundle/
git clone https://github.com/Valloric/YouCompleteMe.git
cd /home/vagrant/.vim/bundle/YouCompleteMe
git submodule update --init --recursive
./install.py --clang-completer
cd ~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm
cp .ycm_extra_conf.py ~/

# configs
cd /home/vagrant/
git clone https://github.com/Escapingbug/my-configs.git
cd my-configs
chmod +x ./INSTALL_VAGRANT
./INSTALL_VAGRANT
cd ../
rm -rf my-configs

# Install Angr
cd /home/vagrant
sudo apt-get -y install python-dev libffi-dev build-essential virtualenvwrapper
sudo pip2 install virtualenv
virtualenv angr
source angr/bin/activate
pip2 install angr --upgrade

mkdir ~/ctf
