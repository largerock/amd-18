#!/bin/bash

export fileid=1oUq953eyUkg2bOQJSO7cx3c-pwd3wZfc
export filename=amdgpu-pro.tar.xz

wget -O $filename 'https://docs.google.com/uc?export=download&id='$fileid
tar -Jxvf amdgpu-pro.tar.xz
cd amdgpu-pro
./amdgpu-install -y --opencl=pal,legacy
echo "you better reboot boi"
