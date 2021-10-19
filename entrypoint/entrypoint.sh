#!/bin/sh

cat /jsonresume-theme-aurora/resume.json | jq --from-file /entrypoint/vcard.filter --raw-output | qrencode --type SVG > /jsonresume-theme-aurora/public/qrcode.svg

exec "$@"
