# Docker php+mysql+nginx hosting container
nginx + PHP + MySQL service

## Install as systemd service

Install `docker`, `docker-compose`, `git` before

Clone repository
```
mkdir /opt -p && cd /opt
git clone https://github.com/avin/php-hosting-docker-compose.git hosting
``` 
Modify `docker-compose.yml` if you need.

Create `/etc/systemd/system/hosting-docker.service`:
```
[Unit]
Description=Hosting Service  
After=docker.service  
Requires=docker.service

[Service]
ExecStart=/usr/local/bin/docker-compose -f /opt/hosting/docker-compose.yml up --build
ExecStop=/usr/local/bin/docker-compose -f /opt/hosting/docker-compose.yml stop -t 2

[Install]
WantedBy=multi-user.target  
```

Install service
```
systemctl enable hosting-docker.service
```

## Structure
* `backups/db` mysql dumps location
* `content/db` mysql db files location
* `content/site-configs` nginx configs for websites
* `content/site-files` websites files

## DB Maintenance
* `db_backup.sh` - make dumps of all mysql dbs
* `db_cli.sh` - enter mysql console