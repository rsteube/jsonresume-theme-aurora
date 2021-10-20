#!/bin/sh

mkdir -p /jsonresume-theme-aurora/public
cat /jsonresume-theme-aurora/resume.json | jq --from-file /entrypoint/vcard.filter --raw-output | qrencode --type SVG > /jsonresume-theme-aurora/public/qrcode.svg

start=$(cat /jsonresume-theme-aurora/resume.json | jq --raw-output '.work[].startDate' | sort | head -1)
sed -i "s/Total Experience: {{totalWorkExp '.*'}}/Total Experience: {{totalWorkExp '${start}'}}/" /jsonresume-theme-aurora/src/components/work-experience.hbs

exec "$@"
