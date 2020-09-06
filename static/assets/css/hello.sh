#!/bin/bash
FILES=/Users/yogesh/Projects/rengine/static/assets/css/forms/*
for f in $FILES
do
  echo "Searching $f"
  result=`grep -Rnwl /Users/yogesh/Projects/rengine -ie "$f" --exclude-dir=".git"`
  if [ -z $result ]
  then
	rm -i $f
  fi
done
