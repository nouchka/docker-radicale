# docker-radicale

[![Docker Hub repository](http://dockeri.co/image/nouchka/radicale)](https://registry.hub.docker.com/u/nouchka/radicale/)

[![](https://images.microbadger.com/badges/image/nouchka/radicale.svg)](https://microbadger.com/images/nouchka/radicale "Get your own image badge on microbadger.com")
[![](https://images.microbadger.com/badges/version/nouchka/radicale.svg)](https://microbadger.com/images/nouchka/radicale "Get your own version badge on microbadger.com")
[![Docker Automated buil](https://img.shields.io/docker/automated/nouchka/radicale.svg)](https://hub.docker.com/r/nouchka/radicale/)
[![Build Status](https://travis-ci.org/nouchka/docker-radicale.svg?branch=master)](https://travis-ci.org/nouchka/docker-radicale)
<!---
[![Docker Stars](https://img.shields.io/docker/stars/nouchka/docker-radicale.svg)](https://hub.docker.com/r/nouchka/radicale/)
[![Docker Pulls](https://img.shields.io/docker/pulls/nouchka/docker-radicale.svg)]()
--->

# Versions

Version follows radicale version of jessie

* 0.9 (latest) (based on 0.9 branch)

# Image
This is a basic calendar server radicale for one user with password protected access.

# Use

Use from command line:

	docker run -e 'RADICALE_USER=user' \
		-e 'RADICALE_PASSWORD=password' \
		nouchka/radicale
or use with docker compose:

	docker-compose up -d
Environment variables:

	RADICALE_USER=user
	RADICALE_PASSWORD=password

# Todo

* change htpasswd cryptage to avoid SHA1
* Migrate docker-compose file format to version 2

# Donate

Bitcoin Address: 15NVMBpZJTvkefwfsMAFA3YhyiJ5D2zd3R
