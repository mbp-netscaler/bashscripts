#!/usr/bin/bash

#takes input from a file, where the format is a word pr line, and returns only the subdomain that returns OK
domain=$1
xargs -P10 -n1 -I{} bash -c "
  if host \"{}.$domain\" &> /dev/null; then
    echo \"{}.$domain\"
  fi
"

