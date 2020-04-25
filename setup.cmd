REM Get compose file:
REM Note: Might need proxy to access below file.
wget https://raw.githubusercontent.com/zhaopinglu/docker-spark/master/docker-compose-spark-hadoop.yml -O docker-compose-spark-hadoop.yml

REM Start up
docker network create spark-net
docker-compose -f docker-compose-spark-hadoop.yaml up -d

REM Shut down
docker-compose -f docker-compose-spark-hadoop.yaml down
docker network rm spark-net

