#!/bin/bash
echo "mounting ${S3_BUCKET} to ${MOUNTPOINT}"
if [ -z ${DEBUG} ]; then
  s3fs ${S3_BUCKET} ${MOUNTPOINT}
else
  echo "credentials used"
  echo "id: ${AWSACCESSKEYID}"
  echo "key: ${AWSSECRETACCESSKEY}"
  s3fs ${S3_BUCKET} ${MOUNTPOINT} -d -d -f -o f2 -o curldbg
fi
ls -l ${MOUNTPOINT}
