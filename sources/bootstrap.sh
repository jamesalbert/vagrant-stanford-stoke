#!/usr/bin/env bash

# download and install stoke to /home/vagrant/stoke
# which is synced to the host's $THIS_PROJECT'S_DIR/stoke
if [ ! -d stoke ]
then
    git clone https://github.com/StanfordPL/stoke
    cd stoke
    ./configure.sh
    make
    echo 'export PATH="$PATH:/home/vagrant/stoke/bin"' > /home/vagrant/.bashrc
    cd ..
fi

# install sana
if [ ! -d sana ]
then
    chmod 400 /home/vagrant/.ssh/id_rsa
    ssh-keyscan bitbucket.org >> /home/vagrant/.ssh/known_hosts
    git clone git@bitbucket.org:jamesrobertalbert/sana.git
    cd sana
    make
    cd ..
fi
