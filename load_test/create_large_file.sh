#!/usr/local/bin/bash
echo "Creating 10MiB File..."
dd if=/dev/urandom of=large_file bs=1048576 count=10 &> /dev/null
echo "Done Creating 10MiB File."
echo "Compressing 10MiB File..."
xz -z3k --threads=4 large_file
echo "Done Compressing 10MiB File."
exit 0

