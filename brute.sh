#!/usr/bin/bash

#takes input from a file, where the format is a word pr line, and returns only the subdomain that returns OK
domain=$1
while read sub; do
  if host "$sub.$domain" &> /dev/null; then
    echo "$sub.$domain"
  fi
done

