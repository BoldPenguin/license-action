#!/bin/bash -e

if [ -f Gemfile.lock ]; then
  pwd
  ls
  ls ..
  bundle config unset deployment
  bundle add license_finder --group=development
else
  gem install license_finder
fi
