#!/bin/bash -e

if [ -f Gemfile.lock ]; then
  bundle config unset deployment
  bundle add license_finder --group=development
  bundle lock --add-platform x86_64-linux
else
  gem install license_finder
fi
