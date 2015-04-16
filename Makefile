.PHONY: build shell test all presentation start clean backup

DOCKER_IMAGE := cpt_igloo/devbox
DOCKER_NAME = app_devbox_1
PROXY_CACHE_DIR = /var/lib/boot2docker/proxy-cache

all: build test

build:
	#docker build --tag "$(DOCKER_IMAGE)" .
	docker-compose build
	mkdir -p ~/.x2goclient
	cp -f configs/sessions ~/.x2goclient/

start:
	mkdir -p ~/work/mavenRepo/docker
	docker-compose up -d

shell:
	docker-compose run devbox sudo -u dockerx bash -l

gui: start
	/Applications/x2goclient.app/Contents/MacOS/x2goclient \
		--session=devbox

presentation:
	docker kill $(DOCKER_NAME)-web || :
	docker rm $(DOCKER_NAME)-web || :
	@docker run -d --name $(DOCKER_NAME)-web -v $(CURDIR)/slides:/www -p 80:80 fnichol/uhttpd
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
	docker-compose kill
	docker-compose rm -f -v




