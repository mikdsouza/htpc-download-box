FROM alpine:3.12

ENV PUID=1003
ENV PGID=1000

RUN addgroup --gid $PGID -S masq && adduser --uid $PUID -S --disabled-password --no-create-home masquser masq

RUN apk --no-cache add dnsmasq-dnssec
EXPOSE 53 53/udp
ENTRYPOINT ["dnsmasq", "-k"]