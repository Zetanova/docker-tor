FROM alpine:3.12
#ARG TARGETPLATFORM
ARG TOR_VERSION

RUN apk update && apk add tor=${TOR_VERSION}

COPY ./torrc /etc/torrc

EXPOSE 9050 9051

CMD ["tor", "-f", "/etc/torrc"]