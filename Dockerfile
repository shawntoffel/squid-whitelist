FROM alpine:3.20.1
RUN apk add --no-cache squid
COPY squid.conf /etc/squid/squid.conf
RUN touch /etc/squid/safe_domains && chown squid /etc/squid/safe_domains
COPY entrypoint.sh .
RUN chmod +x entrypoint.sh
USER squid
ENTRYPOINT [ "./entrypoint.sh" ]