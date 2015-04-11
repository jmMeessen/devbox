#!/usr/bin/env bats


@test "Check JDK presence" {
	docker run cpt_igloo/devbox:latest which java
}

@test "Check maven presence" {
	docker run cpt_igloo/devbox:latest bash -c "/opt/maven/maven-latest/bin/mvn -version"
}

@test "Check that maven is in the path for a user " {
	docker run cpt_igloo/devbox:latest bash -l -c "mvn -version"
}

@test "Check that dockerx can sudo whithout password" {
	docker run -u dockerx cpt_igloo/devbox:latest sudo whoami
}

@test "We use lxde" {
	docker run -u dockerx cpt_igloo/devbox:latest which lxde-logout
}

@test "We have a shortcut for IDEA in the lxde start menu" {
	docker run cpt_igloo/devbox:latest [ -f /usr/share/applications/idea.desktop ]
	docker run cpt_igloo/devbox:latest [ -f /opt/idea/idea.png ]
	[ $(docker run cpt_igloo/devbox:latest grep -i idea /usr/share/applications/idea.desktop | wc -l) -ge 1 ]
}

@test "Idea is in the main taskbar" {
	docker run -u dockerx cpt_igloo/devbox:latest [ -f /home/dockerx/.config/lxpanel/LXDE/panels/panel ]
	[ $(docker run cpt_igloo/devbox:latest grep 'idea.desktop' /home/dockerx/.config/lxpanel/LXDE/panels/panel | wc -l) -ge 1 ]
}

@test "the main taskbar is on the top to not mess up woth X11 main windows" {
	docker run -u dockerx cpt_igloo/devbox:latest [ -f /home/dockerx/.config/lxpanel/LXDE/panels/panel ]
	[ $(docker run cpt_igloo/devbox:latest grep 'edge=top' /home/dockerx/.config/lxpanel/LXDE/panels/panel | wc -l) -ge 1 ]
	
}
