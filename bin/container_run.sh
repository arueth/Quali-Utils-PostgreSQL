#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

docker container run \
        -d \
        -e POSTGRES_PASSWORD='psql-passwd!' \
        --name quali_utils_postgres \
        -p 5433:5432 \
        -v quali_utils_container_db_data:/var/lib/postgresql/data \
        arueth/quali-utils-postgres:latest
