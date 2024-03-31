## Overview

Automating the weird stuff.

# Nmap Easy Scan

Automate the process of performing detailed nmap scans on a list of IP addresses. It first identifies all open ports for each IP address and then performs a comprehensive scan.

## Features

- **Open Ports Identification**: Automatically detects open ports for each IP address in the provided list.
- **Comprehensive Scanning**: Performs a detailed scan on the discovered open ports, utilizing nmap's service and version detection, OS detection, and script scanning capabilities.
- **User-friendly**: Simplifies complex nmap scan commands into a single, easy-to-use script. Perfect for routine security assessments or network monitoring.

## Prerequisites

- The script requires `nmap`

## Usage

1. Place the IP addresses you wish to scan in a text file, with one address per line.
2. Run the script with the path to the file as its argument:

    ```bash
    ./easy_scan.sh <ips_input_file>
    ```

3. The script first identifies all open ports on the listed IP addresses and displays them in red. Then, it performs a detailed scan on those ports.

4. Results of the scans are saved to `open-ports-scan.scan` and `custom-scan.scan` files, respectively.
