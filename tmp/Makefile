DOCKER_NAME ?= rcore-tutorial-v3
.PHONY: docker build_docker ci
	
docker:
	docker run --rm -it -v ${PWD}:/mnt -w /mnt ${DOCKER_NAME} bash

build_docker: 
	docker build -t ${DOCKER_NAME} .

fmt:
	cd os ; cargo fmt;  cd ..

ci:
	@rm -rf ci-user
	@git clone git@github.com:LearningOS/rCore-Tutorial-Checker-2025S ci-user
	@git clone git@github.com:LearningOS/rCore-Tutorial-Test-2025S ci-user/user