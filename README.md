# Docker NOIP Updater

RaspberryPi version that provides NOIP updates for dynamic DNS. Runs using forever, to ensure NOIP restarts in teh event of a crash.

## Usage

To use this image, create a docker-compose file with the required envirnment variables need to run NOIP udpater in nodeJS.

```yml
version: '2'
services:
  noip:
    image: ulsmith/rpi-noip-updater
    container_name: noip
    restart: always
    environment:
      - 'USERNAME=...'
      - 'PASSWORD=...'
      - 'DOMAIN=...'
    networks:
      - docker-localhost
networks:
  docker-localhost:
```

Then simply

```bash
docker-compose up -d
```

To run it

## Variables

__USERNAME__ - Your NOIP username
__PASSWORD__ - Your NOIP password
__DOMAIN__ - The domain to update (to update more than one domain, use another container)
__FREQUENCY__ - The frequeancy in days to update... or omit for every 12 hours
