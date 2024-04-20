#!/bin/bash

# List of websites to check
WEBSITES=(
	"https://rohankewal.surge.sh"
)

# Function to check the HTTP status code of a URL
check_url() {
	response=$(curl -o /dev/null --silent --head --write-out '%{http_code}' "$1")
	if [ "$response" != "200" ]; then
		echo "$1: Problem found - HTTP status $response"
	else
		echo "$1: No problems detected."
	fi
}

# Function to find broken links on a website using wget
check_links() {
	echo "Checking for broken links on $1"
	# --spider: Don't download pages, just check links
	# -o log.txt: Log output to log.txt file
	# -r: Recursive
	# -l 1: Only one level deep from the given URL
	wget --spider -o log.txt -r -l 1 $1
	grep -B 2 '404 Not Found' log.txt
}

# Main loop to check each website
for website in "${WEBSITES[@]}"; do
	echo "Testing website: $website"
	check_url $website
	check_links $website
done
