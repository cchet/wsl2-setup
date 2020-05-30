#!/bin/bash

ANSIBLE_VERSION='2.9.6+dfsg-1~bpo10+1'

apt-get update
apt-get install -y ansible=${ANSIBLE_VERSION} python-pip python3-pip
pip install pexpect
pip3 install pexpect