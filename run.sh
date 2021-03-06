#!/bin/bash -e

CMD_PREFIX=""
ARGS=""

if [ -f Gemfile.lock ]; then
  CMD_PREFIX="bundle _2.1.4_ exec"
  # Bundler has an issue, need to run using an old version
  # https://github.com/pivotal/LicenseFinder/issues/828
  gem install bundler -v 2.1.4
fi

if ! [ -z "$RECURSIVE" ]; then
  ARGS="--recursive"
fi

$CMD_PREFIX license_finder $ARGS
