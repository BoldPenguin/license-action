#!/bin/bash -ex

if [ -f Gemfile.lock ]; then
  bundle config unset deployment
  bundle add license_finder --group=development
  pwd
  echo "================================================================================"
  ls
  echo "================================================================================"
  ls ..
  echo "================================================================================"
  ls vendor
  echo "================================================================================"
else
  gem install license_finder
fi
