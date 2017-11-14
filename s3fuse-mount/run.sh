#!/bin/bash
echo "mounting ${S3_BUCKET} to ${MOUNTPOINT}"
s3fs ${S3_BUCKET} ${MOUNTPOINT}
ls -l ${MOUNTPOINT}
