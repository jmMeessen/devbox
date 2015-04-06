.PHONY: build shell test all

DOCKER_IMAGE := cpt_igloo/devbox

all: build test

build:
	docker build --tag "$(DOCKER_IMAGE)" .

shell:
	docker run --rm --tty --interactive "$(DOCKER_IMAGE)" /bin/bash -l

test:
    docker run -v $(CURDIR)/bats-tests:/tmp cpt_igloo/bats /usr/local/bin/bats /tmp/test.bats $(DOCKER_IMAGE)
