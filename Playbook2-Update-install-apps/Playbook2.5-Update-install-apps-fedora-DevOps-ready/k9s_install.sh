#!/bin/bash

# Goal of this script is to install kubernetes management tool called k9s.This script will need to be run with sudo

#  Create Temp dir

mkdir /tmp/DelMe

# Install brew

cd /tmp/DelMe

curl -sS https://webinstall.dev/k9s | bash


 if [ $? -eq 0 ]
    then
       echo 'k9s was installed successfully!'
else
   echo 'Installation failed!'
   fi

# rm -rf /tmp/DelMe

# k9s version