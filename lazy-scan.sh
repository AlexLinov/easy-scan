#!/bin/bash

if [ "$#" -ne 3 ]; then
    echo "Usage: $0 <ports_input_file> <ports_output_file> <ips_input_file>"
    exit 1
fi

ports_input_file="$1"
ports_output_file="$2"
ips_input_file="$3"

ports=$(grep -oP '\b\d+/tcp\b' "$ports_input_file" | grep -oP '^\d+' | sort -n | uniq | paste -sd ',' -)

echo "$ports" > "$ports_output_file"
echo "Unique port numbers have been written to $ports_output_file"

echo "Starting nmap scan with the specified ports and IP list..."
nmap -iL "$ips_input_file" -p"$ports" -sCV -A -oN script-scan.scan -vvv

echo "nmap scan completed. Results are saved in 'script-scan.scan'."
