docker-bats
============

Builds an docker image with the [bats](https://github.com/sstephenson/bats)  ready to run.


Running bats
------------

- create a directory with your bats script (i.e.: `bats-tests\mytest.bats`)
- run the docker container with:

        docker run -v bats-tests:/tmp tomdesinto/bats /usr/local/bin/bats /tmp/mytest.bats



Building a docker image
-----------------------

    git clone https://github.com/thomasleveil/docker-bats.git
    cd docker-bats
    make build



Get a shell in a running container
----------------------------------

    make shell
