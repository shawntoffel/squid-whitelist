FROM alpine:3.10.2
RUN apk add --no-cache sudo squid
COPY squid.conf /etc/squid/squid.conf
COPY sudoers /etc/sudoers.d/squid
COPY entrypoint.sh .
RUN chmod +x entrypoint.sh
USER squid
ENTRYPOINT [ "sudo", "./entrypoint.sh" ]