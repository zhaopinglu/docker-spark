# Note: Might need proxy to access below file.
wget https://raw.githubusercontent.com/zhaopinglu/docker-spark/master/docker-compose-spark-hadoop.yml -O docker-compose-spark-hadoop.yml

# Start up
docker network create spark-net -d nat
docker-compose -f docker-compose-spark-hadoop.yml up -d

# Shut down
# docker-compose -f docker-compose-spark-hadoop.yml down
# docker-compose -f docker-compose-spark-hadoop.yml rm
# docker network rm spark-net

