#!/bin/sh
#
# Entrypoint for devbox

# This command will write docker's env now to a profile file
env | awk '{print "export " $0}' | sudo tee -a /etc/profile.d/user-env.sh

# Main process
sudo /usr/sbin/sshd -D
