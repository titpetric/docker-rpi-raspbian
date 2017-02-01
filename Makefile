build: raspbian-stretch.latest.tar.xz raspbian-jessie.latest.tar.xz
	docker build --rm --no-cache=true -t titpetric/rpi-raspbian:stretch -f Dockerfile.stretch .
	docker build --rm --no-cache=true -t titpetric/rpi-raspbian:jessie -f Dockerfile.jessie .
	docker push titpetric/rpi-raspbian:stretch
	docker push titpetric/rpi-raspbian:jessie

raspbian-stretch.latest.tar.xz:
	DISTRIBUTION="stretch" ./mkimage-raspbian.sh

raspbian-jessie.latest.tar.xz:
	DISTRIBUTION="jessie" ./mkimage-raspbian.sh

.PHONY: build