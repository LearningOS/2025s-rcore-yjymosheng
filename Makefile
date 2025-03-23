DOCKER_NAME ?= rcore-tutorial-v3
.PHONY: docker build_docker
	
docker:
	docker run --rm -it -v ${PWD}:/mnt -w /mnt ${DOCKER_NAME} bash
 	# git config --global --add safe.directory /mnt

build_docker: 
	docker build -t ${DOCKER_NAME} .

fmt:
	cd os ; cargo fmt;  cd ..

getown:
	@sudo chown mosheng:mosheng -R . 
