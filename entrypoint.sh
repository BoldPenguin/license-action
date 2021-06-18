#!/bin/bash -e

curl -fsS \
  -H "Authorization: token $BP_GH_TOKEN" \
  -H 'Accept: application/vnd.github.v3.raw' \
  -o dependency_decisions.yml \
  -L https://api.github.com/repos/BoldPenguin/licensed-config/contents/dependency_decisions.yml

# The absolute path will be different when running in Docker
bundle config --local BUNDLE_PATH $PWD/vendor/bundle

license_finder --decisions-file=dependency_decisions.yml
