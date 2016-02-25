#!/bin/bash -e

#base image already has node and nvm installed globally...

echo "================= Updating global nodejs packages ==================="
sudo npm install -g gulp;

echo "=============== Installing bower globally ============="
sudo npm install -g bower

echo "=============== Installing Disque ==============="
sudo git clone git@github.com:antirez/disque.git
pushd /disque
make .
./src/disque-server
popd

for file in /u14nod/version/*;
do
  $file
done
