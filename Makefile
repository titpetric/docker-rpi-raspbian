build: raspbian-stretch.latest.tar.xz
	docker build --rm --no-cache=true -t titpetric/rpi-raspbian:stretch -f Dockerfile.stretch .

raspbian-stretch.latest.tar.xz:
	DISTRIBUTION="stretch" ./mkimage-raspbian.sh

.PHONY: build