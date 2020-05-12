# bashscripts

The subdomains.txt just need single lines with a name
brute.sh is used to find subdomains from a wordlist, like cat subdomains.txt | ./brute.sh yahoo.com, it will only return those subdomains that returns a valid IP (The IP isn't shown)

It's possible to convert the subdomains.txt to a file we can use to fetch the URLS using curl, it can be done with cat subdomains.txt | ./brute.sh yahoo.com | awk '{print "https://" $1}' > urls.txt



cnames.sh is used to find cnames, cat subdomains.txt | ./cnames yahoo.com


Fetch is used to take the content from an URL list and parse it into unique file names, which can be grep. cat urls.txt | ./fetch.sh, the input files needs contain the URL (https://www.yahoo.com, https://shop.yahoo.com)
