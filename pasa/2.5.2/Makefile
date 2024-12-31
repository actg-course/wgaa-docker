IMAGE_NAME=$(notdir $(shell dirname $(CURDIR)))
VERSION=$(notdir $(CURDIR))

build:
	docker build --build-arg VERSION=${VERSION} -t systemsgenetics/actg-wgaa-${IMAGE_NAME}:$(VERSION) .

push: build
	docker push systemsgenetics/actg-wgaa-${IMAGE_NAME}:$(VERSION)

test:
	docker run -it -u 0 systemsgenetics/actg-wgaa-${IMAGE_NAME}:$(VERSION) Launch_PASA_pipeline.pl --version

run:
	docker run -it -u 0 systemsgenetics/actg-wgaa-${IMAGE_NAME}:$(VERSION) /bin/bash

clean:
	rm -f environment.yml