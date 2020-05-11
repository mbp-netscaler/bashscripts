#!/usr/bin/bash

#Take domain
domain=$1
while read sub; do #get cnames from dmain, but only those that are working, awk gets the last line
  cname=$(host -t CNAME $sub.$domain | grep 'an alias' | awk '{print $NF}')
 
  if [ -z "$cname" ]; then
    continue
  fi

  if ! host $cname &> /dev/null; then
    echo "$cname did not resolve! ($sub.$domain)"
  fi
done

