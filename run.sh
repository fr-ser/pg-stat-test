#!/usr/bin/env bash

docker-compose up -d
sleep 1

for i in {1..3}; do
    docker-compose exec database psql -U user_1 -d zlab -f /sql/insert_1.sql
done


for i in {1..5}; do
    docker-compose exec database psql -U user_2 -d zlab -f /sql/insert_2.sql
done
