#!/usr/bin/env bash

# update
export DEBIAN_FRONTEND=noninteractive
apt-get update
apt-get upgrade -y

# install dependencies
apt-get install -y bison ccache cmake doxygen exuberant-ctags flex g++-4.9 g++-multilib gcc-4.9 ghc git libantlr3c-dev libboost-dev libboost-filesystem-dev libboost-thread-dev libcln-dev libghc-regex-compat-dev libghc-regex-tdfa-dev libghc-split-dev libjsoncpp-dev python subversion libiml-dev libgmp-dev libboost-regex-dev

# make gcc-4.9 default
update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-4.9 60 --slave /usr/bin/g++ g++ /usr/bin/g++-4.9

# download and install stoke to /home/vagrant/stoke
# which is synced to the host's $THIS_PROJECT'S_DIR/stoke
git clone https://github.com/StanfordPL/stoke
cd stoke
./configure.sh
make
echo 'export PATH="$PATH:/home/vagrant/stoke/bin"' > /home/vagrant/.bashrc
cd ..

# install sana
chmod 400 /home/vagrant/.ssh/id_rsa
git clone git@bitbucket.org:jamesrobertalbert/sana.git
cd sana
make
cd ..
