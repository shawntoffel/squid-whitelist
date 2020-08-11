# squid-whitelist

Minimal squid config with no default outbound access. To whitelist domains pass them in as arguments. Arguments are passed to the [dstdomain ACL element](http://www.squid-cache.org/Doc/config/acl).
```
docker run -it -p 3128:3128 shawntoffel/squid-whitelist:0.0.2 myip.shawntoffel.com .googleapis.com
```

Logs are written to stdout. 
