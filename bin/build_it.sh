#!/bin/bash
checkout-gecko workspace && cd ./workspace/gecko && curl -L -o gecko.patch http://b2g-community-builds.github.io/raw-file/gecko.patch && patch -p1 < gecko.patch && rm gecko.patch && cd testing/taskcluster/scripts/phone-builder && buildbot_step 'Build' ./build-phone.sh $HOME/workspace
