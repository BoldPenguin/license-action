#!/bin/bash -ex

if [ -f Gemfile.lock ]; then
  bundle config unset deployment
  bundle add license_finder --group=development
  # echo "pwd: $(pwd)"
  # echo "ls: $(ls)"
  # echo "ls ..: $(ls ..)"
  ls -a vendor
  file vendor/bundle
else
  gem install license_finder
fi
