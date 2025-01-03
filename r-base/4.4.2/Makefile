IMAGE_NAME=$(notdir $(shell dirname $(CURDIR)))
VERSION=$(notdir $(CURDIR))

build:
	# Replace placeholders in the environment.yml file
	sed -e "s/{{SOFTWARE}}/$(IMAGE_NAME)/g" -e "s/{{VERSION}}/$(VERSION)/g" environment.template.yml > environment.yml
	# Build the Docker image
	docker build -t systemsgenetics/actg-wgaa-${IMAGE_NAME}:$(VERSION) .

push: build
	docker push systemsgenetics/actg-wgaa-${IMAGE_NAME}:$(VERSION)

test: build
	docker run -it -u 0 systemsgenetics/actg-wgaa-${IMAGE_NAME}:$(VERSION) R --version | grep version

run: build
	docker run -it -u 0 systemsgenetics/actg-wgaa-${IMAGE_NAME}:$(VERSION) /bin/bash

clean:
	rm -f environment.yml