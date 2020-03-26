#!/usr/bin/env bash

cp /conf/postgresql.conf /var/lib/postgresql/data/postgresql.conf
# logging directory
mkdir -p /var/lib/postgresql/logs/