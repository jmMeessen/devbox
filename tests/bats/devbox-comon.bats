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