#!/bin/sh

image_id=$(docker ps --format=json | jq --slurp '.[] | select(.Image == "ghcr.io/a-b/cf-cli-release-ci:main-latest") | .ID' --raw-output)
docker exec --interactive --tty "${image_id}" /bin/bash
