#!/usr/bin/env bash
parent_path=$( cd "$(dirname "${BASH_SOURCE[0]}")" ; pwd -P )
curl \
    -d "@${parent_path}/loginRequest.json" \
    localhost:8080/login