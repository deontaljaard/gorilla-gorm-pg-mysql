#!/usr/bin/env bash
token=$(../auth/login.sh | xargs)
user_id=1
time curl -i \
    -X DELETE \
    -H "Authorization: Bearer ${token}" \
    localhost:8080/users/${user_id}