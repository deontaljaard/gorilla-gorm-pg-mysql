#!/usr/bin/env bash
token=$(../auth/login.sh | xargs)
post_id=1
time curl -i \
    -X PUT \
    -H "Authorization: Bearer ${token}" \
    -d "@updatePostRequest.json" \
    localhost:8080/posts/${post_id}