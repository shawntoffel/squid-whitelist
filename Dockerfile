FROM alpine:3.20.1
RUN apk add --no-cache squid
COPY squid.conf /etc/squid/squid.conf
COPY entrypoint.sh .
RUN chmod +x entrypoint.sh
USER squid
ENTRYPOINT [ "./entrypoint.sh" ]