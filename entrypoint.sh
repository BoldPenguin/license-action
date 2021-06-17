#!/bin/bash -e

curl -fsS \
  -H "Authorization: token $BP_GH_TOKEN" \
  -H 'Accept: application/vnd.github.v3.raw' \
  -o .licensed.yml \
  -L https://api.github.com/repos/BoldPenguin/licensed-config/contents/default.yml

licensed cache
licensed status
