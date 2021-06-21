#!/bin/bash -e

mkdir -p doc

curl -fsS \
  -H "Authorization: token $BP_GH_TOKEN" \
  -H 'Accept: application/vnd.github.v3.raw' \
  -o doc/dependency_decisions.yml \
  -L https://api.github.com/repos/BoldPenguin/licensed-config/contents/dependency_decisions.yml
