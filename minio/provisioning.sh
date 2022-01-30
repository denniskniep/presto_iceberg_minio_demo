#!/bin/bash
/usr/bin/mc config host add myminio ${MINIO_URL} ${MINIO_ACCESS_KEY} ${MINIO_SECRET_KEY};
/usr/bin/mc mb myminio/warehouse;

exit 0;