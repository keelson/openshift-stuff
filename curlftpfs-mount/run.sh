#!/bin/sh
curlftpfs ftp://ftp.sunet.se/ /storage
ls -l /storage
echo "sleeping forever..."
while true; do
  sleep 1
done

