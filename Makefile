UID = $(shell id -u $(USER))
GID = $(shell id -g $(USER))

help:         # Show this message.
	@echo "\nAvailable Targets:\n"
	@sed -ne '/@sed/!s/# //p' $(MAKEFILE_LIST)

test:         # Run all unit tests.
	@docker run --rm \
		-w $$PWD \
		-v $$PWD:$$PWD \
		-u $(UID):$(GID) \
		--entrypoint bash \
		bitnami/jsonnet:0.16.0 \
		tests.sh

test-update:  # Run all unit tests while copying test_output.json to compiled.json file.
	@docker run --rm \
		-w $$PWD \
		-v $$PWD:$$PWD \
		-u $(UID):$(GID) \
		--entrypoint bash \
		bitnami/jsonnet:0.16.0 \
		tests.sh update

.PHONY: help test test-update
