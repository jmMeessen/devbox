.PHONY: build shell

DOCKER_IMAGE := cpt_igloo/bats

build:
	docker build --rm --tag "$(DOCKER_IMAGE)" .

shell:
	docker run --rm --tty --interactive "$(DOCKER_IMAGE)" /bin/bash -l