#!/bin/bash
PWFILE=/tmp/.s3
echo ${S3_USER}:${S3_PASSWORD} > ${PWFILE}
chmod 600 ${PWFILE}

echo "mounting ${S3_BUCKET} to ${MOUNTPOINT}"
s3fs ${S3_BUCKET} ${MOUNTPOINT} -o passwd_file=${PWFILE}
ls -l ${MOUNTPOINT}
