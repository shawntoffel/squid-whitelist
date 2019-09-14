#! /bin/sh

# add arguments to safe_domains file
for domain in "$@"; do
  echo "$domain" >> /etc/squid/safe_domains
done

# start squid
squid -N