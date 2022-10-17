#!/usr/bin/env bash
set -ex

export USER=kasm-user

cd $HOME
git clone https://github.com/ArduPilot/ardupilot.git -b Sub-4.1 --recurse-submodules


cd ardupilot

#install-prereqs-ubuntu.sh from ardupilot

sudo apt install python-is-python3

sudo pip3 install future

sudo pip3 install -U mavproxy pymavlink
