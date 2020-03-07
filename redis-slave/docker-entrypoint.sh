#!/bin/sh
set -e

redis-server /etc/redis/redis.conf &

while [ ! -f /var/log/redis/redis-server.log ]; do
  echo "Waiting..."
  sleep 5
done

echo "Starting ${NODE_NAME}..."
tail -f /var/log/redis/redis-server.log
exec "$@"
