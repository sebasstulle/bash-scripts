#!/bin/bash
# Script:      check-ports.sh
# Description: Shows open TCP ports and listening services
# Author:      Sebastian Stulle
# Usage:       ./check-ports.sh

echo "=== Open ports and listening services ==="
echo ""
sudo ss -tlnp | awk 'NR==1 {print "STATE PORT PROCESS"} NR>1 {print $1" "$4" "$6}'
echo ""
echo "Done."
