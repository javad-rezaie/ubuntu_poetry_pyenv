#
# Created on Sat Aug 19 2023
#
# Copyright (c) 2023 The Home Made AI (HOMAI)
# Author: Javad Rezaie
# License: Apache License 2.0
#

# Path to home folder on your local OS (you can change it to 
# where you would like so save your project).
PROJECT_ROOT=$HOME

docker run -it \
    --mount type=bind,source=$PROJECT_ROOT,target=/projects \
    ubuntu_22_04:latest \
    /bin/bash 