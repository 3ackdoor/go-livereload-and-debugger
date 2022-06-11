#!/usr/bin/env bash
# sudo sysctl -w vm.max_map_count=262144
# sudo sysctl -w fs.file-max=65536
# sudo sh -c "ulimit -n 65536"

readonly START="start"

CMD="$1"
AIR_PORT="2345"
APP_PORT="8080"

terminate_running(){
  lsof -i:$AIR_PORT,$APP_PORT, | grep LISTEN | awk -F " " ' { print $2 } ' | xargs kill -9
  # lsof -ti:$AIR_PORT,$APP_PORT | xargs kill -9
}

if [ $CMD == $START ]; then
  terminate_running && cd ./src/ && air -c ../.air.toml
else
  echo "Usage: $0 [ start ]"
  exit 1
fi