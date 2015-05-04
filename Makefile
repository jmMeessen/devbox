.PHONY: build shell test all presentation start clean backup prepare

WEB_SRV_NAME = app_devbox_1

all: build test

build: prepare
	docker-compose -p app build
	mkdir -p ~/.x2goclient
	cp -f configs/sessions ~/.x2goclient/

start:
	mkdir -p ~/work/mavenRepo/docker
	docker-compose -p app up -d

shell:
	docker exec -ti app_devbox_1 bash -l

gui: start
	/Applications/x2goclient.app/Contents/MacOS/x2goclient \
		--session=devbox

presentation:
	docker kill $(WEB_SRV_NAME) || :
	docker rm $(WEB_SRV_NAME) || :
	@docker run -d --name $(WEB_SRV_NAME) -v $(CURDIR)/slides:/www -p 80:80 fnichol/uhttpd
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
	docker-compose -p app run devbox tar czf /tmp/bkp-data-latest.tgz /data/

clean:
	docker-compose -p app kill
	docker-compose -p app rm -f -v

prepare:
	if [ "$$CIRCLECI" = "true" ]; then curl -L https://github.com/docker/compose/releases/download/1.2.0/docker-compose-`uname -s`-`uname -m` > /home/ubuntu/bin/docker-compose && chmod +x /home/ubuntu/bin/docker-compose;fi




