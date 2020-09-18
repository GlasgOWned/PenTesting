#!/usr/bin/env bash

# add additional user
useradd -m glasgow
passwd glasgow
usermod -a -G sudo,vboxsf glasgow
chsh -s /bin/bash glasgow

apt-get clean
apt-get update
apt-get upgrade -y
apt-get dist-upgrade -y

apt install -y \
    docker.io \
    exiftool \
    filezilla filezilla-common \
    gobuster \
    golang \
    ipython3 \
    default-jdk \
    jq \
    libreoffice \
    lolcat \
    ltrace \
    lynx \
    mcrypt \
    npm \
    pandoc \
    poppler-utils \
    python-pip \
    python3-pip \
    plank \
    responder \
    rlwrap \
    ropper \
    seclists \
    steghide \
    strace \
    tree \
    virtualenv

usermod -a -G docker glasgow

#### Regenerate Default ssh keys (move default to new folder)
mkdir /etc/ssh/default_kali_keys
mv /etc/ssh/ssh_host_* /etc/ssh/default_kali_keys/
dpkg-reconfigure openssh-server


#### Python packages
python3 -m pip install awscli jupyter jupyterlab pwntools pymysql pyftpdlib termcolor yq

#### Ruby Gems
gem install mdless

#### go packages
go get github.com/ffuf/ffuf


# Download Atom
atom_deb="/tmp/atom-amd64.deb"
wget -O $atom_deb https://atom.io/download/deb
dpkg -i $atom_deb
# Install Atom's dependencies if they are missing
apt-get -f install -y
# typically need to rerun this step after fixing dependencies
dpkg -i $atom_deb
rm $atom_deb

# update python alias to point to python3
unlink /usr/bin/python
ln -s /usr/bin/python3 /usr/bin/python

unlink /usr/bin/pip
ln -s /usr/bin/pip3 /usr/bin/pip


#### Install Google Chrome
chrome_deb="/tmp/google-chrome-stable_current_amd64.deb"
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb -O $chrome_deb
apt install -y gdebi
gdebi $chrome_deb
dpkg -i $chrome_deb
rm $chrome_deb


echo -e '\n\n# HTB machines' >> /etc/hosts

echo "consider rebooting now..."
