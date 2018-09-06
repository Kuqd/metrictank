#!/bin/bash

# find the dir we exist within...
DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
# and cd into root project dir
echo $DIR
cd ${DIR}/../..
go get -u -v golang.org/x/lint/golint
golint $(go list ./... | grep -v vendor)
