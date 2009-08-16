#!/bin/bash

############
## users
############
#adduser sbird
#adduser dcolgan
#adduser rbird
#adduser production
#adduser testing


############
## LAMP ( I don't know why I installed it. Maybe we should just remove it )
############
yes | apt-get install apache2-mpm-prefork php5 php5-mysql libapache2-mod-php5 mysql-server # we need apache2-mpm-prefork because vpslink (link-2) doesn't provide enough resources to handle apache's level of threads


############
## arc
############
./arc.sh
