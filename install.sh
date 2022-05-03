#!/bin/bash -ex

if [ -f Gemfile.lock ]; then
  bundle config unset deployment
  bundle add license_finder --group=development
  echo "pwd: $(pwd)"
  echo "ls: $(ls)"
  echo "ls ..: $(ls ..)"
  echo "ls -a vendor: $(ls -a vendor)"
else
  gem install license_finder
fi
