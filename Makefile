IMAGE=fhsarp-seed
SOURCE_DIR=$(shell echo `pwd`/src)
build:
	docker run -it -v ${SOURCE_DIR}:/src ${IMAGE} bash -c "cd /src; make build"

clean:
	docker run -it -v ${SOURCE_DIR}:/src ${IMAGE} bash -c "cd /src; make clean"

shell: create-image
	docker run -it --rm -v ${SOURCE_DIR}:/src --net="host" ${IMAGE} bash

create-image:
	docker build -t ${IMAGE} -f Dockerfile .

.PHONY: build clean shell create-image
