.PHONY: build

build:
	mono /tools/.paket/paket.bootstraper.exe
	mono /tools/.paket/paket.exe install
	mono packages/FAKE/tools/FAKE.exe build.fsx
