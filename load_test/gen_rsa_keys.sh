#!/usr/local/bin/bash
echo "Creating 10 4096-bit RSA Keys..."
for i in `seq 1 10`;
do
	openssl genrsa 4096 out text &> /dev/null &
done
wait
echo "Done Creating 10 4096-bit RSA Keys."
exit 0

