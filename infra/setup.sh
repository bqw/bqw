#!/bin/bash
#This was done on a vpslink link-2 jauntey server (vpslink.com)
./server.sh
./arc.sh

#############################################
## other
#############################################
apt-get install screen
yes | apt-get install apache2-mpm-prefork php5 php5-mysql libapache2-mod-php5 mysql-server # we need apache2-mpm-prefork because vpslink (link-2) doesn't provide enough resources to handle apache's level of threads
apt-get install vim-full #the standard vim is not so good
yes | apt-get install emacs # :)
