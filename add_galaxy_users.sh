#!/bin/bash
sudo groupadd -g 1450 galaxy
sudo groupadd -g 1550 postgres
sudo useradd -d /home/galaxy -m -u 1450 -g 1450 -s /bin/bash -c "galaxy user within docker" galaxy
sudo useradd -d /home/postgres -m -u 1550 -g 1550 -s /bin/bash -c "postgres user within docker" postgres
