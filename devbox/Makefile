.PHONY: build shell

DOCKER_IMAGE := cpt_igloo/devbox
DOCKER_BINARY_VOLUME := -v /usr/local/bin/docker:/usr/local/bin/docker -v /var/run/docker.sock:/var/run/docker.sock

build:
	docker build --rm --tag "$(DOCKER_IMAGE)" .
	docker run --rm -ti  $(DOCKER_BINARY_VOLUME) -v $(CURDIR)/bats-tests:/tmp cpt_igloo/bats /usr/local/bin/bats /tmp/image-validation-tests.bats

shell:
	docker run --rm --tty --interactive "$(DOCKER_IMAGE)" /bin/bash -l

validate:
    docker run -ti -v $(CURDIR)/bats-tests:/tmp cpt_igloo/bats /usr/local/bin/bats /tmp/test.bats $(DOCKER_IMAGE)

