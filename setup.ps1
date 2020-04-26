# Note: Might need proxy to access below file.
wget https://raw.githubusercontent.com/zhaopinglu/docker-spark/master/docker-compose-spark-hadoop.yml -O docker-compose-spark-hadoop.yml

docker network rm spark-net
docker network create -d bridge --subnet=192.168.3.0/24 --gateway 192.168.3.1 -o com.docker.network.bridge.enable_icc=true -o com.docker.network.bridge.enable_ip_masquerade=true spark-net

# Start up
docker-compose -f docker-compose-spark-hadoop.yml up -d

# Shut down
# docker-compose -f docker-compose-spark-hadoop.yml down
# docker-compose -f docker-compose-spark-hadoop.yml rm
# docker network rm spark-net

