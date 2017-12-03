#!/usr/local/bin/bash
echo "Running scripts concurrently..."
touch logfile
time $( ./create_large_file.sh >> logfile & ./gen_rsa_keys.sh >> logfile & ./create_many_little_files.sh >> logfile & wait)
echo "Done Running scripts concCleaning up:urrently."
echo "Cleaning up:"
echo "Removing logfile..."
rm -f logfile
echo "Removing old large file..."
rm -f large_file large_file.xz
echo "Removing old little files..." 
rm -rf many_little_files
exit 0

