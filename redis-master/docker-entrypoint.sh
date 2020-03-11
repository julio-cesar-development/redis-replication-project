#!/bin/sh
set -e

redis-server /etc/redis/redis.conf &
REDIS_PID="$!"
wait $REDIS_PID

echo "Starting ${NODE_NAME}..."
tail -f /var/log/redis/redis-server.log
exec "$@"
