#!/bin/bash
cd ~
export fileid=1oUq953eyUkg2bOQJSO7cx3c-pwd3wZfc
export filename=amdgpu-pro.tar.xz

wget --save-cookies cookies.txt 'https://docs.google.com/uc?export=download&id='$fileid -O- \
     | sed -rn 's/.*confirm=([0-9A-Za-z_]+).*/\1/p' > confirm.txt

wget --load-cookies cookies.txt -O $filename \
     'https://docs.google.com/uc?export=download&id='$fileid'&confirm='$(<confirm.txt)

tar -Jxvf amdgpu-pro.tar.xz
cd ~/amdgpu-pro
./amdgpu-install -y --opencl=pal,legacy
echo "you better reboot boi"
