all: build

build:
	@docker build --tag=openapphack/ubuntu:latest .

release: build
	@docker build --tag=openapphack/ubuntu:$(shell cat VERSION) .
