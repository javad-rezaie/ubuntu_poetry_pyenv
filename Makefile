#---------------------HOMAI------------------------#
# Created on Sat Aug 19 2023
#
# Copyright (c) 2023 The Home Made AI (HOMAI)
# Author: Javad Rezaie
# License: Apache License 2.0
#---------------------HOMAI------------------------#

.PHONEY: docker-build-ubuntu

docker-build-ubuntu:
	DOCKER_BUILDKIT=1 docker build \
	-f Docker.Dockerfile \
	-t ubuntu_22_04 .

