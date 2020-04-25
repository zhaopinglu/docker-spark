CMD Get compose file:
CMD Note: You might need proxy to access below file.
wget https://raw.githubusercontent.com/zhaopinglu/docker-spark/master/docker-compose-spark-hadoop.yml -O docker-compose-spark-hadoop.yml

CMD Start up
docker network create spark-net
docker-compose -f docker-compose-spark-hadoop.yaml up -d

CMD Shut down
docker-compose -f docker-compose-spark-hadoop.yaml down
docker network rm spark-net