#!/usr/bin/env bash
set -ex

sudo apt install -y rapidjson-dev libgz-sim7-dev
cd $HOME
git clone https://github.com/ArduPilot/ardupilot_gazebo -b ignition-garden
cd ardupilot_gazebo
mkdir build && cd build
cmake .. -DCMAKE_BUILD_TYPE=RelWithDebInfo
make -j4

echo 'export IGN_GAZEBO_SYSTEM_PLUGIN_PATH=$HOME/ardupilot_gazebo/build:${IGN_GAZEBO_SYSTEM_PLUGIN_PATH}' >> ~/.bashrc
echo 'export IGN_GAZEBO_RESOURCE_PATH=$HOME/ardupilot_gazebo/models:$HOME/ardupilot_gazebo/worlds:${IGN_GAZEBO_RESOURCE_PATH}' >> ~/.bashrc