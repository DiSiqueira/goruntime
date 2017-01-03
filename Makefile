.PHONY: bootstrap
bootstrap:
	script/install-glide
	glide install

.PHONY: update
update:
	glide up
	glide install

.PHONY: tests
tests:
	go test -cover -race $(shell glide nv)
