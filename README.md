# 3LGM² IHE Docker Container Infrastructure

## Setup

* Git clone this repository
* `git submodule init`
* `git submodule update`
* copy `.env.dist` to `.env`, customize the environment variable values, such as the profiles of which services to start
* `docker compose up` (old systems: `docker-compose up`)
* go to <http://localhost:9001/sparql>, <http://localhost:9001/conductor>, <http://localhost:9002/ihe> or <http://localhost:9003/ihe/>
