#!/bin/ash
set -e

psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" <<-EOSQL
    CREATE DATABASE quali_utils;
    GRANT ALL PRIVILEGES ON DATABASE quali_utils TO postgres;
EOSQL
