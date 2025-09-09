#!/bin/bash

# Get the disk usage percentage (without % sign)
USAGE=$(df / | grep / | awk '{print $5}' | sed 's/%//')

# Set threshold
THRESHOLD=80

# Check usage
if [ "$USAGE" -gt "$THRESHOLD" ]; then
    echo "Warning: Disk usage is at ${USAGE}%! Please clean up."
else
    echo "Disk usage is under control: ${USAGE}% used."
fi

echo " this is a dummy line"
