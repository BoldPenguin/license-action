#!/bin/bash -e

CMD_PREFIX=""

if [ -f Gemfile.lock ]; then
  CMD_PREFIX="bundle _2.1.4_ exec"
  # Bundler has an issue, need to run using an old version
  # https://github.com/pivotal/LicenseFinder/issues/828
  gem install bundler -v 2.1.4
fi

# echo "pwd: $(pwd)"
# echo "ls: $(ls)"
# echo "ls ..: $(ls ..)"

$CMD_PREFIX license_finder --recursive
