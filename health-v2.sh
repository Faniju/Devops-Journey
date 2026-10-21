#! /bin/bash
echo "=== Full Health Check ==="
echo "Date: $(date)"
echo "User: $(whoami)"
echo " "
echo "-- Disk Usage --"
df -h | grep -E "Filesystem|/dev"
echo ""
echo "-- Memory --"
free -h
echo ""
echo "-- Top 5 Largest Files Here --"
ls -lhS | head -6
