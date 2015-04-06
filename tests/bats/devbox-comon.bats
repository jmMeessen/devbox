#!/usr/bin/env bats

@test "Check JDK presence" {
   run docker run -rm cpt_igloo/devbox:latest java -version
   #[ "${lines[1]}" = "Java(TM) SE Runtime Environment (build 1.7.0_76-b13)" ]
   [ $? -eq 0 ]
}

@test "Check maven presence" {
   run docker run -rm cpt_igloo/devbox:latest app/fuse/maven/bin/mvn -version
   #[ "${lines[1]}" = "Java(TM) SE Runtime Environment (build 1.7.0_76-b13)" ]
   [ $? -eq 0 ]
}