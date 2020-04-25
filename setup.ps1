REM Note: Might need proxy to access below file.
wget https://raw.githubusercontent.com/zhaopinglu/docker-spark/master/docker-compose-spark-hadoop.yml -O docker-compose-spark-hadoop.yml

REM Start up
docker network create spark-net
docker-compose -f docker-compose-spark-hadoop.yml up -d

REM Shut down
REM docker-compose -f docker-compose-spark-hadoop.yml down
REM docker network rm spark-net

