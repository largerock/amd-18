#!/bin/bash

wget -P ~/Downloads/ "https://drivers.amd.com/drivers/linux/amdgpu-pro-19.20-812932-ubuntu-18.04.tar.xz"
cd ~/Downloads
tar -Jxvf amdgpu-pro-19.20-812932-ubuntu-18.04.tar.xz
cd ~/Downloads/amdgpu-pro-19.20-812932-ubuntu-18.04
./amdgpu-install --opencl=pal,legacy
