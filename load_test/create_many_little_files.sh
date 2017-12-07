#!/usr/local/bin/bash
numfiles=50
mkdir many_little_files
cd many_little_files
echo "Creating $numfiles 1MiB Files..."
for i in `seq 1 $numfiles`;
do
	dd if=/dev/urandom of=$i bs=1024 count=1000 &> /dev/null &
done
wait
echo "Done Creating $numfiles 1MiB Files."
exit 0

