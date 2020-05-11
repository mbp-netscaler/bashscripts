#!/usr/bin/bash

while read url; do
    filename=$(echo $url | sha256sum | awk '{print $1}')
    curl -sk "$url" -o $filename
done
