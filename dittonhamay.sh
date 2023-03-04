#!/bin/bash
rm -rf * &&
CONTAINER_NAME="feelingsurf/viewer:stable"
CONTAINER_ID=$(docker inspect --format="{{.Id}}" ${CONTAINER_NAME} 2> /dev/null)
if [[ "${CONTAINER_ID}" ]]; then
  echo "Process found"
  # container found.
else
sudo su && nohup yarn start > /dev/null & docker run -d -e access_token=5ee8f09761e98fc843479c832c7221a0 --cap-add SYS_ADMIN feelingsurf/viewer:stable && docker ps && mabu=$(docker ps -a -q) && docker run -d --network=host --name=9hits mabuhit/rebuildhit /nh.sh --token=b0b7c4153737ac37199881dd23266574 --system-session --ex-proxy-sessions=20 --allow-crypto=no --session-note=$mabu --note=$mabu --hide-browser --ssh-connector=ssh2 && docker ps && mabu=$(docker ps -a -q) && docker update --restart=always $mabu
  # container not found.
fi
