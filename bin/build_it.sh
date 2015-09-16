#!/bin/bash
checkout-gecko workspace && cd ./workspace/gecko && curl -L -o gecko.tar http://b2g-community-builds.github.io/raw-file/gecko.tar && tar xf gecko.tar && rm gecko.tar && cd testing/taskcluster/scripts/community-phone-builder && buildbot_step 'Build' ./build-phone.sh $HOME/workspace
