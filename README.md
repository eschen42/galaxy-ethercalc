# galaxy-ethercalc
## Files
- `DockerFile` - This file defines the build for the `eschen42/ethercalc` docker image.
- `etc-init.d-galaxy_docker` - This file is to be copied to `/etc/init.d/galaxy_docker` for use in starting and stopping `galaxy-compose.yml` as a service.
- `galaxy-compose.yml` - Start or stop Galaxy, ethercalc, and redis containers.
- `start.sh` - Start `galaxy-compose.yml`; must be run as root.
- `stop.sh` -  Stop  `galaxy-compose.yml`; must be run as root.
- `add_galaxy_users.sh` - Add users `galaxy` and `postgres` to `/etc/passwd` and `/etc/group`.
## Advice
You definitely need to update `GALAXY_CONFIG_BRAND` and `GALAXY_CONFIG_ADMIN_USERS` in the enviroment in `galaxy-compose.yml`.
```yml
  environment:
    # TODO update admin user identifier(s); this is a comma-separated list
    - GALAXY_CONFIG_ADMIN_USERS=you@somedomain
    # TODO update brand
    - GALAXY_CONFIG_BRAND='unbranded W4M'

```

You almost definitely will want to add users `galaxy` and `postgres`:
```bash
sudo groupadd -g 1450 galaxy
sudo groupadd -g 1550 postgres
sudo useradd -d /home/galaxy -m -u 1450 -g 1450 -s /bin/bash -c "galaxy user within docker" galaxy
sudo useradd -d /home/postgres -m -u 1550 -g 1550 -s /bin/bash -c "postgres user within docker" postgres
```
This can be achieved by running `add_galaxy_users.sh`.
