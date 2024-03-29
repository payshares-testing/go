#! /bin/bash
set -e

printf "Running staticcheck...\n"

ls -d */ \
  | egrep -v '^vendor|^docs' \
  | xargs -I {} go run honnef.co/go/tools/cmd/staticcheck -tests=false -checks="all,-ST1003,-SA1019,-ST1005,-ST1000,-ST1016,-S1039,-ST1021,-ST1020,-ST1019,-SA4022" ./{}...
