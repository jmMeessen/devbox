#!/bin/sh
#
# Entrypoint for devbox

# This command will write docker's env now to a profile file
env | tee -a /etc/profile.d/user-env.sh

# Main process
sudo /usr/sbin/sshd -D
