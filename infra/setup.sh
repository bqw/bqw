#!/bin/bash
#This was done on a vpslink link-2 jauntey server (vpslink.com)

#############################################
## adding the users
#############################################
#TODO: useradd sbird, dcolgan, rbird with input given at command line

#############################################
## Installing git
#############################################
apt-get install git-core

#############################################
## Installing arc
#############################################
cd /usr/local/src/
wget http://download.plt-scheme.org/bundles/372/mz/mz-372-bin-i386-linux-ubuntu.sh
chmod a+x mz-372-bin-i386-linux-ubuntu.sh
yes " " | ./mz-372-bin-i386-linux-ubuntu.sh
wget http://ycombinator.com/arc/arc3.tar
tar xvf arc3.tar
mv arc3 /usr/local/lib/
wget http://www.greenend.org.uk/rjk/2005/with-readline-0.1.tar.bz2
tar xvf with-readline-0.1.tar.bz2
cd with-readline-0.1
./configure && make && make install
cd ..
apt-get install expect #in order to have arc bin automatically load ~/.arc, '(load "~/.arc")' has to be passed as actual stdin input because only after startup is the arc engine (as opposed to the under-the-hood mzscheme engine) actually running and can read arc code. The expect program handles this better than bash (ie, makes it possible)
cp ~root/arc /usr/local/bin # TODO: ~root/arc file will eventually be in repo as well, so this will have to change to a git co
chmod a+x /usr/local/bin/arc

#############################################
## other
#############################################
apt-get install screen
# we need apache2-mpm-prefork because vpslink (link-2) doesn't provide enough resources to handle apache's level of threads
apt-get install apache2-mpm-prefork php5 php5-mysql libapache2-mod-php5 mysql-server
apt-get install vim-full #the standard vim is not so good

