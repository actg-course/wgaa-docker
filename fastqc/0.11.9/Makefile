IMAGE_NAME=$(notdir $(shell dirname $(CURDIR)))
VERSION=$(notdir $(CURDIR))

build:
	# Replace placeholders in the environment.yml file
	sed -e "s/{{SOFTWARE}}/$(IMAGE_NAME)/g" -e "s/{{VERSION}}/$(VERSION)/g" environment.template.yml > environment.yml
	# Build the Docker image
	docker build -t systemsgenetics/actg-wgaa-${IMAGE_NAME}:$(VERSION) .

clean:
	# Remove dynamically generated files
	rm -f environment.yml