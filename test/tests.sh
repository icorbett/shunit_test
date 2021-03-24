#!/usr/bin/env bash

# get our location
DIR="${BASH_SOURCE%/*}"
if [[ ! -d "$DIR" ]]; then DIR="$PWD"; fi

source "$DIR/../common.sh"

testEquality()
{
  assertEquals 1 1
}

testPartyLikeItIs2021()
{
  assertEquals "It's 2021" \
      '2021' "$(year)"
}

# shellcheck source=/usr/local/bin/shunit2
. "$(which shunit2)"
