.PHONY: build shell test all presentation start clean backup

DOCKER_IMAGE := cpt_igloo/devbox
DOCKER_NAME = devbox

all: build test

build:
	docker build --tag "$(DOCKER_IMAGE)" .

start:
	docker start $(DOCKER_NAME) 2>/dev/null || docker run \
		--name $(DOCKER_NAME) \
		-d \
		-p 2200:22 \
		-v $$(which docker):$$(which docker) \
		-v /var/run/docker.sock:/var/run/docker.sock \
		-e DOCKER_HOST=unix:///var/run/docker.sock \
		$(DOCKER_IMAGE)

shell:
	docker exec --tty --interactive $(DOCKER_NAME) sudo -u dockerx bash -l

presentation:
	@docker run -d -v $(CURDIR)/slides:/www -p 80:80 fnichol/uhttpd
	@echo http://$$(boot2docker ip 2>/dev/null):80

test:
	docker run \
		-v $(CURDIR):/app \
		-v $$(which docker):$$(which docker) \
		-v /var/run/docker.sock:/var/run/docker.sock \
		-e DOCKER_HOST=unix:///var/run/docker.sock \
		dduportal/bats:0.4.0 \
			/app/tests/bats/

backup:
	docker exec --detach $(DOCKER_NAME) tar czf /tmp/bkp-data-latest.tgz /data/
	docker cp $(DOCKER_NAME):/tmp/bkp-data-latest.tgz ./

clean:
	docker kill devbox
	docker rm devbox
