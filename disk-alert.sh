#! /bin/bash
echo "=== Disk Alert Check ==="
echo "Date: $(date)"
echo ""
# Get disk usage as a number (without %)
USAGE=$(df -h | grep -E "/dev/root|/dev" | head -1 | awk '{print $5}' | tr -d '%')
echo "Current Disk Usage: ${USAGE}%"
# check if >= 60
if [ $USAGE -gt 80 ]; then
	echo "ALERT: Disk almost full! clean up now! - $USAGE% used"
else
	echo "OK: Disk is healthy - $USAGE% used"
fi
