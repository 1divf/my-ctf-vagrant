# Vagrant CTF Box

## Tools included
* [pwntools](https://github.com/Gallopsled/pwntools)
* [peda](https://github.com/longld/peda)
* [Radare2](https://github.com/radare/radare2)
* [Firmware tools (fmk / qemu)](http://reverseengineering.stackexchange.com/questions/8829/cross-debugging-for-mips-elf-with-qemu-toolchain)
* vim(YouCompleteMe supported)
* [Angr](https://github.com/angr/angr)

And some personal configs

## Install VirtualBox
Check [Virtualbox](https://www.virtualbox.org/wiki/Downloads) for information on installing Virtualbox on your respective operating system.

## Install Vagrant
Check [VagrantUp](http://www.vagrantup.com/downloads) for information on installing vagrant.

## Shared folder

Drop files in the `host-share` folder on your host to find them on your VM at `/home/vagrant/host-share`

## Notice
This is my own vagrant file, modified from the original ctf-vagrant-64.
Changed some tools that I use the most.
