#!/bin/bash
echo "auto eth0
iface eth0 inet stativ
        address 192.168.100.10
        netmask 255.255.255.0
        gateway 10.0.2.2" | sudo tee /etc/network/interfaces.d/eth0.cfg
