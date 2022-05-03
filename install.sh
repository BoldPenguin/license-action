#!/bin/bash -ex

if [ -f Gemfile.lock ]; then
  pwd
  echo "================================================================================"
  ls
  echo "================================================================================"
  ls ..
  echo "================================================================================"
  ls vendor
  echo "================================================================================"
  bundle config unset deployment
  bundle add license_finder --group=development
else
  gem install license_finder
fi
