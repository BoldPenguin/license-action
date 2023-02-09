#!/bin/bash -e

CMD_PREFIX=""
ARGS=""

if [ -f Gemfile.lock ]; then
  CMD_PREFIX="bundle exec"
fi

if ! [ -z "$RECURSIVE" ]; then
  ARGS="--recursive"
fi

$CMD_PREFIX license_finder $ARGS
