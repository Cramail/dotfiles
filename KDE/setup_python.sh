#!/bin/bash

echo "[*] Update conda and pip"
conda update -y conda
pip install -U pip

echo "[*] Install packages"
conda install -y cudatoolkit==9.0
conda install -y tensorflow-gpu==1.9.0
conda install -y keras==2.2.4
pip install progressbar2

echo "[*] Install new node.js"
curl -OL https://nodejs.org/dist/v10.16.0/node-v10.16.0-linux-x64.tar.xz
tar -Jxf node-v10.16.0-linux-x64.tar.xz
mv node-v10.16.0.linux-x64 /home/shinohara/.nodejs
rm -rf node-v10.16.0-linux-x64.tar.xz
echo -e "\nexport PATH=$PATH:/home/shinohara/.nodejs/bin" >> /home/shinohara/.bashrc

echo "[*] Enable jupyter-lab's extentions"
jupyter labextension install @jupyter-widgets/jupyterlab-manage
jupyter nbextension enable --py --sys-prefix widgetsnbextension
jupyter labextension install @lckr/jupyterlab_variableinspector




