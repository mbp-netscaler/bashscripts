#!/usr/bin/bash

#Makes a directory called out
mkdir -p out

#Created an unique file in the folder, using the SHA256 sum of the url, the tee is to create a file called index, where we can see what was returned, with the appended hostname after the SHA256 value
while read url; do
    filename=$(echo $url | sha256sum | awk '{print $1}')
    filename="out/$filename"
    echo "$filename $url" | tee -a index
    curl -sk -v "$url" &> $filename
done
