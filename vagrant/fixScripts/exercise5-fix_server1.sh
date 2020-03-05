#!/bin/bash
ssh-keygen -t rsa -f /home/vagrant/.ssh/id_rsa -N ""
ssh-copy-id -i /home/vagrant/.ssh/id_rsa vagrant@server2
