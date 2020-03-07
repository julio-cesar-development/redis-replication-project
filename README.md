# Redis Replication Project

[![Build Status](https://badgen.net/travis/julio-cesar-development/redis-replication-project?icon=travis)](https://travis-ci.com/julio-cesar-development/redis-replication-project)
[![GitHub Status](https://badgen.net/github/status/julio-cesar-development/redis-replication-project)](https://github.com/julio-cesar-development/redis-replication-project)

> This is a simple project made with Redis using Docker containers, to simulate the replication of Redis, only for learning purposes

## Instructions

### Running master and slave with docker-compose

```bash
docker-compose up -d
```

### Test locally with redis-cli tool

```bash
# connect to master
redis-cli -h 127.0.0.1 -p 20000 -a masterpassword
127.0.0.1:20000> set KEY VALUE
OK

# connect to slave
redis-cli -h 127.0.0.1 -p 30000 -a slavepassword
127.0.0.1:30000> get KEY
"VALUE"
```

### Test locally with another docker container

```bash
# run a docker container with redis-cli
docker container run --rm --name redis-test --net=host -it redis:5.0 sh

# connect to master
redis-cli -h 127.0.0.1 -p 20000 -a masterpassword
127.0.0.1:20000> set KEY VALUE
OK
```
