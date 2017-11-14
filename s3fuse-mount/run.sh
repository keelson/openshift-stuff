#!/bin/bash
echo "######################################"
echo "mounting ${S3_BUCKET} to ${MOUNTPOINT}"
echo "######################################"
if [ -z ${DEBUG} ]; then
  s3fs ${S3_BUCKET} ${MOUNTPOINT}
else
echo "######################################"
  echo "credentials used"
  echo "id: ${AWSACCESSKEYID}"
  echo "key: ${AWSSECRETACCESSKEY}"
echo "######################################"
  s3fs ${S3_BUCKET} ${MOUNTPOINT} -d -d -f -o f2 -o curldbg
fi
ls -l ${MOUNTPOINT}
