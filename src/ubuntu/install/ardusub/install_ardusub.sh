#!/usr/bin/env bash
set -ex
cd $HOME
git clone https://github.com/ArduPilot/ardupilot.git --recurse-submodules

cd ardupilot

git checkout c623ae8

#install-prereqs-ubuntu.sh from ardupilot

sudo apt install python-is-python3

sudo pip3 install future

sudo pip3 install -U mavproxy pymavlink

export USER=kasm-user
~/ardupilot/Tools/environment_install/install-prereqs-ubuntu.sh -y

cd ~/ardupilot
./waf configure
./waf clean