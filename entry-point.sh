#!/bin/sh


gcsfuse -o allow_other "$BUCKET_NAME" /z || exit 1

python3 -m copyparty -a "$USER_NAME:$USER_PASSWD" -v "/z::A,$USER_NAME"