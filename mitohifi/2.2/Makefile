IMAGE_NAME=$(notdir $(shell dirname $(CURDIR)))
VERSION=$(notdir $(CURDIR))

build:
	git clone https://github.com/marcelauliano/MitoHiFi.git; \
	cd MitoHiFi; \
	git checkout v2.2; \
	docker build -t systemsgenetics/actg-wgaa-${IMAGE_NAME}:$(VERSION) .

push: build
	docker push systemsgenetics/actg-wgaa-${IMAGE_NAME}:$(VERSION)

test: build
	docker run -it -u 0 systemsgenetics/actg-wgaa-${IMAGE_NAME}:$(VERSION) mitohifi.py --version

run: build
	docker run -it -u 0 systemsgenetics/actg-wgaa-${IMAGE_NAME}:$(VERSION) /bin/bash

clean:
	rm -f MitoHiFi