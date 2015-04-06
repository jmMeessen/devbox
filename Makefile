.PHONY: build shell test all

DOCKER_IMAGE := cpt_igloo/devbox

all: build test

build:
	docker build --tag "$(DOCKER_IMAGE)" .

shell:
	docker run --rm --tty --interactive "$(DOCKER_IMAGE)" /bin/bash -l

test:
	docker run \
		-v $(CURDIR)/tests/bats:/bats-tests \
		-v $$(which docker):$$(which docker) \
		-v /var/run/docker.sock:/var/run/docker.sock \
		-e DOCKER_HOST=unix:///var/run/docker.sock \
		tomdesinto/bats \
			/usr/local/bin/bats /bats-tests/*.bats $(DOCKER_IMAGE)
