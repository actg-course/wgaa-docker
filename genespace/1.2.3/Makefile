IMAGE_NAME=$(notdir $(shell dirname $(CURDIR)))
VERSION=$(notdir $(CURDIR))

ORTHOFINDER_VERSION=2.5.5
MCSCANX_VERSION=b1ca533


build:
	docker build --build-arg ORTHOFINDER_VERSION=${ORTHOFINDER_VERSION} \
	  --build-arg MCSCANX_VERSION=${MCSCANX_VERSION} \
	  --build-arg GENESPACE_VERSION=${VERSION} \
	  -t systemsgenetics/actg-wgaa-genespace:$(VERSION) .

push: build
	docker push systemsgenetics/actg-wgaa-${IMAGE_NAME}:$(VERSION)

test:
	docker run -it -u 0 systemsgenetics/actg-wgaa-${IMAGE_NAME}:$(VERSION) Rscript -e "library(GENESPACE)" 

run:
	docker run -it -u 0 systemsgenetics/actg-wgaa-${IMAGE_NAME}:$(VERSION) /bin/bash

clean:
	rm -f environment.yml