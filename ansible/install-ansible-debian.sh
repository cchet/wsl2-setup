#!/bin/bash

set -ue

ANSIBLE_VERSION='2.9.6+dfsg-1~bpo10+1'

apt-get update
apt-get install -y ansible=${ANSIBLE_VERSION} python-pip python-apt python3-pip python3-apt 
pip install pexpect
pip3 install pexpect

echo "[targets]
localhost ansible_connection=local ansible_python_interpreter=/usr/bin/python2" > /etc/ansible/hosts
