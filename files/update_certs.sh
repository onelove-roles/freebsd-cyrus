#!/bin/sh

CERTSPATH="/var/imap/certs"
cat /etc/certs/*/privkey.pem >"${CERTSPATH}/privkey.pem"
cat /etc/certs/*/fullchain.pem >"${CERTSPATH}/fullchain.pem"
service imapd reload
exit 0
