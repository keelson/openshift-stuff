#!/bin/bash
PWFILE=/tmp/.s3
echo ${S3_USER}:${S3_PASSWORD} > ${PWFILE}
chmod 600 ${PWFILE}

cat ${PWFILE}
s3fs ${S3_BUCKET} ${MOUNTPOINT} -o passwd_file=${PWFILE}
ls -l ${MOUNTPOINT}
