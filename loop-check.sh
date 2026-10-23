#!/bin/bash
echo "Checking all .sh files..."
for file in *.sh
do
echo "--- $file ---"
ls -lh $file | awk '{print $9, $5}'
done
