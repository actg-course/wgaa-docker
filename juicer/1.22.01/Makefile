IMAGE_NAME=$(notdir $(shell dirname $(CURDIR)))
VERSION=$(notdir $(CURDIR))

build:
	cp environment.template.yml environment.yml; \
	docker build --build-arg VERSION=${VERSION} -t systemsgenetics/actg-wgaa-${IMAGE_NAME}:$(VERSION) .

push: build
	docker push systemsgenetics/actg-wgaa-${IMAGE_NAME}:$(VERSION)

test: build
	docker run -it -u 0 systemsgenetics/actg-wgaa-juicer:$(VERSION) \
	java -Xmx32G -jar /usr/local/bin/juicer/juicer_tools_$(VERSION).jar --version | grep Version


run: build
	docker run -it -u 0 systemsgenetics/actg-wgaa-${IMAGE_NAME}:$(VERSION) /bin/bash

clean:
	rm -f environment.yml