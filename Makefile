IMAGE_DOCKER_HUB = "ondrejsika/ondrejsika.mojeid.cz"
IMAGE_GHCR = "ghcr.io/ondrejsika/ondrejsika.mojeid.cz"

dev:
	cd src && slu serve-files
	# or
	# cd src && python3 -m http.server

all:
	make docker-build
	make docker-push

docker-build:
	docker build --platform linux/amd64 -t $(IMAGE_DOCKER_HUB) -t $(IMAGE_GHCR) .

docker-push:
	docker push $(IMAGE_DOCKER_HUB)
	docker push $(IMAGE_GHCR)

docker-run:
	docker run -p 8000:80 $(IMAGE_DOCKER_HUB)
