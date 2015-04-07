#!/usr/bin/env bats


@test "Check JDK presence" {
   docker run --rm cpt_igloo/devbox:latest which java
}

@test "Check maven presence" {
   docker run --rm cpt_igloo/devbox:latest bash -c "/opt/maven/maven-latest/bin/mvn -version"
}

@test "Check that maven is in the path for a user " {
   docker run --rm cpt_igloo/devbox:latest bash -l -c "mvn -version"
}