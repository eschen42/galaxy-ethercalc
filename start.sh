#!/bin/bash
# this file is to be run as root or sudo

# pushd to the directory where this script and galaxy-compose.yml both reside
#   ref: https://stackoverflow.com/questions/242538/unix-shell-script-find-out-which-directory-the-script-file-resides#comment15303203_1638397
pushd "$(dirname "$(readlink "$BASH_SOURCE" || echo "$BASH_SOURCE")")"
GALAXY_COMPOSE_DIR=`pwd`

# you may want to adjust this to taste; this user *MUST* exist in /etc/passwd
DOCKER_USER=galaxy

# extract and export UID for docker user
DOCKER_USER=$(grep "^$DOCKER_USER:" /etc/passwd | cut -f 3 -d ':') ; export DOCKER_USER

echo running docker-compose up for UID=$DOCKER_USER
docker-compose -f galaxy-compose.yml up -d

