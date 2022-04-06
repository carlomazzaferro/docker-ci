FROM goodsmileduck/redis-cli:latest

COPY ping-redis.sh .
RUN chmod +x ping-redis.sh
RUN apk add bash

ENTRYPOINT ["./ping-redis.sh",  "0.0.0.0"]