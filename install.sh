#!/bin/bash -ex

if [ -f Gemfile.lock ]; then
  ls -a vendor/bundle/ruby/3.1.0/gems
  bundle config unset deployment
  bundle add license_finder --group=development
  # echo "pwd: $(pwd)"
  # echo "ls: $(ls)"
  # echo "ls ..: $(ls ..)"
  ls -a vendor/bundle/ruby/3.1.0/gems
  file vendor/bundle
else
  gem install license_finder
fi
