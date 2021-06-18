#!/bin/bash -e

if [ -f Gemfile.lock ]; then
  bundle exec license_finder --decisions-file=dependency_decisions.yml
else
  license_finder --decisions-file=dependency_decisions.yml
fi
