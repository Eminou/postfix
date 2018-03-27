FROM alpine:latest

LABEL maintainer="contact@ahmedaminemejri.com"

RUN apk --update add postfix \
               postfix-mysql \
  && rm -rf /var/cache/apk/*

EXPOSE 25 465 587

CMD ["postfix","start-f"]

