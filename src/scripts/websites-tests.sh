#!/bin/bash

# List of websites to check
WEBSITES=(
	"https://rohankewal.surge.sh"
)

# Function to check the HTTP status code of a URL
check_url() {
	local url=$1
	response=$(curl -o /dev/null --silent --head --write-out '%{http_code}' "$url")
	echo -n "$url -> $response | "
}

# Function to find broken links on a website using wget
check_links() {
	local url=$1
	local logfile="log-$RANDOM.txt" # Creates a unique log file name

	# Perform the wget operation
	wget --spider -o $logfile -r -l 1 -nd $url # Added -nd to prevent directory creation

	# Check for 404 Not Found errors in the log file and count them
	if [ -f $logfile ]; then
		broken_links=$(grep -o '404 Not Found' $logfile | wc -l)
		echo "Broken URLs: $broken_links found."
		if [ "$broken_links" -ne 0 ]; then
			grep -B 2 '404 Not Found' $logfile | grep 'URL:' | awk -F' ' '{print $3}' | sort | uniq
		fi
		rm $logfile
	else
		echo "Log file not created. Check wget command."
	fi
}

# Main loop to check each website
for website in "${WEBSITES[@]}"; do
	echo -n "Testing website: "
	check_url $website
	check_links $website
done
