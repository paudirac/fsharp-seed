SOURCE_DIR=$(shell echo `pwd`/src)
run:
	docker run -it -v ${SOURCE_DIR}:/src fsharp bash -c "cd /src; make run"

build:
	docker run -it -v ${SOURCE_DIR}:/src fsharp bash -c "cd /src; make Program.exe"

clean:
	docker run -it -v ${SOURCE_DIR}:/src fsharp bash -c "cd /src; make clean"
