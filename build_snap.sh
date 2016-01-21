#!/bin/sh

SNAPPYVM=../snappy-vm
SNAPSRC=`pwd`
SNAPNAME=node-red_1.0_amd64.snap

cd $SNAPSRC
snapcraft clean
snapcraft stage --force
#cp settings.js stage/lib/node_modules/node-red/
snapcraft

cd $SNAPPYVM
scp  -P 2222 -i /home/l/git/create-net/agile/snappy-vm/.vagrant/machines/default/virtualbox/private_key  $SNAPSRC/$SNAPNAME ubuntu@127.0.0.1:~/

vagrant ssh -c "sudo snappy install $SNAPNAME --allow-unauthenticated"

#snappy-remote --pub-key=/home/l/git/create-net/agile/snappy-vm/.vagrant/machines/default/virtualbox/private_key --url=ubuntu@127.0.0.1:2222 install $SNAPSRC/*.snap
