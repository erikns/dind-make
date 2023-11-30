
USERNAME=aminmkh
CR_PAT= # https://github.com/settings/tokens

build:
	docker build . -t docker:latest
	docker tag docker:latest ghcr.io/$(USERNAME)/dind-make:latest

push:
	docker push ghcr.io/$(USERNAME)/dind-make:latest

login:
	echo $(CR_PAT) | docker login ghcr.io -u $(USERNAME) --password-stdin

pull:
	docker pull ghcr.io/$(USERNAME)/dind-make:latest

