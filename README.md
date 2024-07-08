# squid-whitelist

Minimal squid config with no default outbound access. To whitelist domains, attach a `/etc/squid/safe_domains` config file or pass individual domains in as arguments. Arguments are passed to the [dstdomain ACL element](http://www.squid-cache.org/Doc/config/acl).
```
docker run -it -p 3128:3128 shawntoffel/squid-whitelist:0.1.0 .github.com .googleapis.com
```

Logs are written to stdout. 
