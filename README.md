# galaxy-ethercalc
- `DockerFile` - This file defines the build for the `eschen42/ethercalc` docker image.
- `etc-init.d-galaxy_docker` - This file is to be copied to `/etc/init.d/galaxy_docker` for use in starting and stopping `galaxy-compose.yml` as a service.
- `galaxy-compose.yml` - Start or stop Galaxy, ethercalc, and redis containers.
- `start.sh` - Start `galaxy-compose.yml`; must be run as root.
- `stop.sh` -  Stop  `galaxy-compose.yml`; must be run as root.
