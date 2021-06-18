#!/bin/bash -e

curl -fsS \
  -H "Authorization: token $BP_GH_TOKEN" \
  -H 'Accept: application/vnd.github.v3.raw' \
  -o dependency_decisions.yml \
  -L https://api.github.com/repos/BoldPenguin/licensed-config/contents/dependency_decisions.yml

pwd
cat .bundle/config
ls vendor/bundle/ruby/*/gems

license_finder --decisions-file=dependency_decisions.yml
