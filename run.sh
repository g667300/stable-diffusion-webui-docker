#!/bin/bash

sudo chown -R $USER ./output

run_chmod() {
 while true; do
  #echo chwon $USER
  sleep 30
  sudo chown -R $USER ./output
 done
}

run_chmod &

docker compose --profile auto up --build
