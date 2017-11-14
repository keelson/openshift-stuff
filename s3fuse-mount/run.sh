#!/bin/bash
PWFILE=/tmp/.s3
echo ${S3_USER}:${S3_PASSWRORD} > ${PWFILE}
chmod 600 ${PWFILE}

s3fs mybucket /storage -o passwd_file=${PWFILE}
ls -l /storage
