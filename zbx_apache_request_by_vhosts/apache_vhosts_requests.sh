#!/bin/bash

if [ -d /etc/httpd/conf.d ] ; then
    VHF="/etc/httpd/conf.d"
fi

if [ -d /etc/apache2/sites-enabled ] ; then
    VHF="/etc/apache2/sites-enabled"
fi

if [ "$1" = "discovery" ] ; then
    echo "[{\"vhost\":\"$(grep ServerName $VHF/* | awk {'print $3'} | sed -r '/^\s*$/d' | sort | uniq | awk '{$1=$1};1' | sed ':a;N;$!ba;s/\n/"},{"vhost":"/g')\"}]"
    exit
fi

lynx -dump -width=1024 $2/$3 | grep $1 | grep -cE " W | R "
