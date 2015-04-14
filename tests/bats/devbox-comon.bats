#!/usr/bin/env bats

CONTAINER_TEST_NAME=testing_devbox
DEVBOX_IMAGE_NAME=cpt_igloo/devbox


run_as_user_cmd_in_devbox() {
	AS_USER="$1"
	shift
	COMMAND="$*"
	docker run \
		-t \
		-u ${AS_USER} \
		--name "${CONTAINER_TEST_NAME}" \
		"${DEVBOX_IMAGE_NAME}" \
			${COMMAND}
}

teardown() {
	# Try to delete the tested container without poluuting stout nor stderr
	# Note the || : that will ignore result of the commande since circleCI throw nonsense error whene deleting on btrfs based Docker
	docker rm -v "${CONTAINER_TEST_NAME}" 1>&2 2>/dev/null || :
}

@test "Check JDK presence" {
	run_as_user_cmd_in_devbox "dockerx" which java
}

@test "Check MVN presence" {
	run_as_user_cmd_in_devbox "dockerx" /opt/maven/maven-latest/bin/mvn -version
}

@test "Check that dockerx can sudo whithout password" {
	run_as_user_cmd_in_devbox "dockerx" sudo whoami
}

@test "We use lxde" {
	run_as_user_cmd_in_devbox "dockerx" which lxde-logout
}

@test "We have a shortcut for IDEA in the lxde start menu" {
	run_as_user_cmd_in_devbox "dockerx" [ -f /usr/share/applications/idea.desktop ]
	teardown 
	run_as_user_cmd_in_devbox "dockerx" [ -f /opt/idea/idea.png ]
	teardown
	[ $(run_as_user_cmd_in_devbox "dockerx"  grep -i idea /usr/share/applications/idea.desktop | wc -l) -ge 1 ]
}

@test "We have our preferred icons in the main taskbar, ont the top screen" {
	run_as_user_cmd_in_devbox "dockerx" [ -f /home/dockerx/.config/lxpanel/LXDE/panels/panel ]
	teardown
	# Top-edged task bar
	[ $(run_as_user_cmd_in_devbox "dockerx" grep 'edge=top' /home/dockerx/.config/lxpanel/LXDE/panels/panel | wc -l) -ge 1 ]
	teardown
	# IntelliJ Idea
	[ $(run_as_user_cmd_in_devbox "dockerx" grep 'idea.desktop' /home/dockerx/.config/lxpanel/LXDE/panels/panel | wc -l) -ge 1 ]
	teardown
	# Mozilla Firefox
	[ $(run_as_user_cmd_in_devbox "dockerx" grep 'firefox.desktop' /home/dockerx/.config/lxpanel/LXDE/panels/panel | wc -l) -ge 1 ]
	teardown
	# Our LXTerminal
	[ $(run_as_user_cmd_in_devbox "dockerx" grep 'lxterminal.desktop' /home/dockerx/.config/lxpanel/LXDE/panels/panel | wc -l) -ge 1 ]
}

@test "We have Firefox installed and shortcut' to the main taskbar and start menu" {
	run_as_user_cmd_in_devbox "dockerx" which firefox
	teardown
	run_as_user_cmd_in_devbox "dockerx" [ -f /usr/share/applications/firefox.desktop ]
	teardown
}

@test "We don't have iceweasel installed anymore (a debian web browser that can cofnlict with firefox)" {
	[ $(run_as_user_cmd_in_devbox "dockerx" dpkg -l | grep iceweasel | grep "^ii" | wc -l) -eq 0 ]
}

@test "We have data volumes for some I/O bounds directories and working directories" {
	run_as_user_cmd_in_devbox "dockerx" ls -l /data
	[ $(docker inspect -f '{{index .Volumes "/tmp"}}' "${CONTAINER_TEST_NAME}" | grep 'no value' | wc -l ) -eq 0 ]
	[ $(docker inspect -f '{{index .Volumes "/data"}}' "${CONTAINER_TEST_NAME}" | grep 'no value' | wc -l ) -eq 0 ]
	[ $(docker inspect -f '{{index .Volumes "/var/log"}}' "${CONTAINER_TEST_NAME}" | grep 'no value' | wc -l ) -eq 0 ]
	[ $(docker inspect -f '{{index .Volumes "/var/cache"}}' "${CONTAINER_TEST_NAME}" | grep 'no value' | wc -l ) -eq 0 ]
}

@test "/data folder is writeable by dockerx" {
	run_as_user_cmd_in_devbox "dockerx" touch /data/test_file
}

@test "Check GIT presence" {
	run_as_user_cmd_in_devbox "dockerx" which git
}
