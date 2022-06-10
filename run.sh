#!/usr/bin/env bash
# sudo sysctl -w vm.max_map_count=262144
# sudo sysctl -w fs.file-max=65536
# sudo sh -c "ulimit -n 65536"

readonly START="start"

CMD="$1"

terminate_running(){
  lsof -ti:2345,8080 | xargs kill -9
}

if [ $CMD == $START ]; then
  terminate_running && cd ./src/ && air -c ../.air.toml
else
  echo "Usage: $0 [ start ]"
  exit 1
fi