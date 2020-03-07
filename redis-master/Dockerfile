FROM redis:5.0
LABEL maintainer="Julio Cesar <julio@blackdevs.com.br>"

WORKDIR /app
RUN apt-get update -y && apt-get install -y iputils-ping curl netcat vim && rm -rf /var/lib/apt/lists/* && apt-get clean

COPY ./docker-entrypoint.sh /app/docker-entrypoint.sh
RUN chmod +x /app/docker-entrypoint.sh

RUN mkdir -p /etc/redis/ && mkdir -p /var/log/redis/ && mkdir -p /var/lib/redis/ && mkdir -p /var/run/redis/
RUN chown -R redis: /etc/redis && chown -R redis: /var/log/redis && chown -R redis: /var/lib/redis && chown -R redis: /var/run/redis

EXPOSE 6379

ENTRYPOINT ["/app/docker-entrypoint.sh"]

# docker image build --tag redis-master:v1.0.0 -f ./redis-master/Dockerfile ./redis-master
# docker container run --name redis-master -p 20000:6379 -v ${PWD}/redis-master:/app redis-master:v1.0.0

# run in interactive mode and replacing entrypoint to access sh
# docker container run --rm -p 20000:6379 -v ${PWD}/redis-master:/app -it --entrypoint "" redis-master:v1.0.0 /bin/sh

# docker container run --rm -it --entrypoint "" redis-master:$SHA sh
