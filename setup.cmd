CMD Get compose file:
wget https://github.com/zhaopinglu/docker-spark/blob/master/docker-compose-spark-hadoop.yml

CMD Start up
docker network create spark-net
docker-compose -f docker-compose-spark-hadoop.yaml up -d

CMD Shut down
docker-compose -f docker-compose-spark-hadoop.yaml down
docker network rm spark-net