#! /bin/bash
echo "=== Daily IT Support Report ==="
echo "Date: $(date)"
echo "Engineer: $(whoami)"
echo "Location: $(pwd)"
echo " "
echo "Last 5 files created:"
ls -lh | tail -5
