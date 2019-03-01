FROM php:7.2-cli-alpine3.8
RUN apk add --no-cache git curl \
  && curl -OL https://squizlabs.github.io/PHP_CodeSniffer/phpcs.phar \
  && chmod +x phpcs.phar \
  && mv phpcs.phar /usr/local/bin/phpcs \
  && rm -rf /var/cache/apk/*
