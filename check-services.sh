#!/bin/bash
# Script:      check-services.sh
# Description: Shows failed systemd services
# Author:      Sebastian Stulle
# Usage:       ./check-services.sh

echo "=== Failed systemd services ==="
echo ""

FAILED=$(systemctl --failed --no-legend 2>/dev/null | grep -v "^$")

if [ -z "$FAILED" ]; then
    echo "All services are running."
else
    echo "-----------------------------------------------"
    echo "$FAILED"
fi

echo ""
echo "Done."
