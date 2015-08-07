#! /bin/bash -e

while getopts "t:i:k:s:" arg; do
  case $arg in
    t)
      TAG=$OPTARG
      ;;
  esac
done

pushd $(dirname $0)

test $TAG

docker build -t $TAG .

popd
