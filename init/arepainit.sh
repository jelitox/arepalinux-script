#!/bin/bash
# ================================================================================
# Arepa Linux: Build and optimize a Server-Based Debian GNU/Linux appliance
# Lite Version: Only install Workstation full-mode in Debian Testing
#
# Copyright © 2013 Jesús Lara Giménez (phenobarbital) <jesuslarag@gmail.com>
# Version: 0.1  
#
# Init Scripts for Arepadistro
#  1) Network Configuration
#  2) Security Configuration
#
#    Developed by Jesus Lara (phenobarbital) <jesuslara@phenobarbital.info>
#    https://github.com/phenobarbital/arepalinux-script
#    
#    License: GNU GPL version 3  <http://gnu.org/licenses/gpl.html>.
#    This is free software: you are free to change and redistribute it.
#    There is NO WARRANTY, to the extent permitted by law.
# ================================================================================
      # get configuration
      if [ -e /etc/arepalinux/arepalinux.conf ]; then
          . /etc/arepalinux/arepalinux.conf
      else
          . ../etc/arepalinux.conf
      fi
      #
      #  all common functions (for all templates)
      #
      if [ -e /usr/lib/arepalinux/libarepa.sh ]; then
          . /usr/lib/arepalinux/libarepa.sh
      else
          . ../lib/libarepa.sh
      fi
echo "Initializing arepainit script."
if ({
    for ((i = 0 ; i <= 100 ; i+=5)); do
    sleep 0.1
    echo $i
    done
    
} | whiptail --gauge "Please wait while loading libs..." 6 50 0) then
    sleep 2;
    show_interfaces
    configure_network_templates
    configure_firewall
fi
exit









