#!/bin/sh
#
# Entrypoint for devbox


env | grep -i proxy | tee -a /etc/profile.d/docker-env.sh
/usr/sbin/sshd -D
