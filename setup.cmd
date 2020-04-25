
REM Start up
docker network create spark-net
docker-compose -f docker-compose-spark-hadoop.yml up -d

REM Shut down
docker-compose -f docker-compose-spark-hadoop.yml down
docker network rm spark-net

