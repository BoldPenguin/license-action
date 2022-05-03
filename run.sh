#!/bin/bash -ex

CMD_PREFIX=""

if [ -f Gemfile.lock ]; then
  CMD_PREFIX="bundle _2.1.4_ exec"
  # Bundler has an issue, need to run using an old version
  # https://github.com/pivotal/LicenseFinder/issues/828
  gem install bundler -v 2.1.4
fi

cat Gemfile.lock
$CMD_PREFIX license_finder --recursive
