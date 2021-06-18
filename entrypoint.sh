#!/bin/bash -e

curl -fsS \
  -H "Authorization: token $BP_GH_TOKEN" \
  -H 'Accept: application/vnd.github.v3.raw' \
  -o dependency_decisions.yml \
  -L https://api.github.com/repos/BoldPenguin/licensed-config/contents/dependency_decisions.yml

# The base ruby image sets this, which ignores local bundler configs
unset BUNDLE_APP_CONFIG

# The absolute path will be different when running in Docker
bundle config --local path $PWD/vendor/bundle

cat .bundle/config
bundle config
ls vendor/bundle/ruby/*/gems

bundle exec license_finder --decisions-file=dependency_decisions.yml
