#!/bin/bash -e

if [ -f Gemfile.lock ]; then
  bundle add license_finder --group=development
else
  gem install license_finder
fi
