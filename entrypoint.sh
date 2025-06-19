#!/bin/bash
set -e

# Espera o banco estar pronto
until pg_isready -h db -p 5432 -U postgres; do
  echo "Aguardando o banco de dados..."
  sleep 2
done

bundle install
bundle exec rails db:prepare
rm -f /app/tmp/pids/server.pid

#exec "$@"
exec bin/dev