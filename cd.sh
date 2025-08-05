#! /bin/sh

# Where Windows Disks are mounted
WIN_PREFIX="/mnt/"

# Are Windows Disks lower or upper case
# 0 - lower; 1 - upper
WIN_DISK_CASE=0

arg="$@"

if [ "$arg" ]; then
	if [[ "${arg:0:1}" != "/" && "${arg:1:1}" == ":" ]]; then
		# Copy the path from args
		linux_path=""
		printf -v linux_path "%s" "$arg"
		
		# Replace : with / e.g. C:\win -> C/\win
		linux_path="${linux_path/":"/"/"}"
		echo $linux_path
	fi
else
	echo "ERROR: No path provided!"
fi
