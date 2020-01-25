#!/usr/bin/env bash
user_id=2
time curl -i \
    localhost:8080/users/${user_id}