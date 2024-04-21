#!/bin/bash

# List of websites to check
WEBSITES=(
	"https://rohankewal.surge.sh"
)

# Function to check the load time and other details of a URL
check_url_details() {
	local url=$1
	local logfile="response-$RANDOM.txt"

	# Measure the load time and capture the output
	load_time=$(curl -o $logfile -w "%{time_total}" -s $url)

	# Convert load time to milliseconds
	load_time_ms=$(awk "BEGIN {print $load_time*1000}")

	echo -n "$url -> Load time: ${load_time_ms}ms | "

	# Check for and display raw PHP or CSS code
	check_raw_code $logfile "PHP" "<?php"
	check_raw_code $logfile "CSS" "<style"
}

# Function to find and display raw code snippets and their locations
check_raw_code() {
	local file=$1
	local code_type=$2
	local pattern=$3
	local occurrences=$(grep -ni "$pattern" $file)

	if [ -n "$occurrences" ]; then
		echo -n "$code_type code detected at lines: "
		echo "$occurrences" | awk -F: '{print $1}' | xargs echo -n
		echo -n " | "
	else
		echo -n "No raw $code_type code | "
	fi
}

# Function to find broken links on a website using wget
check_links() {
	local url=$1
	local logfile="log-$RANDOM.txt"

	# Perform the wget operation
	wget --spider -o $logfile -r -l 1 -nd $url

	# Check for 404 Not Found errors in the log file and count them
	if [ -f $logfile ]; then
		broken_links=$(grep -o '404 Not Found' $logfile | wc -l)
		echo "Broken links: $broken_links found."
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
	check_url_details $website
	check_links $website
done
