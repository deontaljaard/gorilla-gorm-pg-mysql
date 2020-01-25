#!/usr/bin/env bash
token=$(../auth/login.sh | xargs)
time curl -i \
    -H "Authorization: Bearer ${token}" \
    -d "@createUserRequest.json" \
    localhost:8080/users