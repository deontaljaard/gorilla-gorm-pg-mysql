#!/usr/bin/env bash
token=$(../auth/login.sh | xargs)
user_id=2
time curl -i \
    -X PUT \
    -H "Authorization: Bearer ${token}" \
    -d "@updateUserRequest.json" \
    localhost:8080/users/${user_id}