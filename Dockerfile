FROM composer/composer:2.6.2

# Image information
ARG VCS_REF
ARG BUILD_DATE
ARG BUILD_VERSION

LABEL maintainer="Davi Marcondes Moreira <davi.marcondes.moreira@gmail.com>" \
      org.label-schema.name="DevDrops/Vapor-CLI" \
      org.label-schema.vcs-ref=$VCS_REF \
      org.label-schema.build-date=$BUILD_DATE \
      org.label-schema.vcs-url="https://github.com/devdrops/vapor-cli-docker" \
      org.label-schema.schema-version="1.0" \
      org.label-schema.version=$BUILD_VERSION

# Alpine requirements
RUN apk update && \
    apk upgrade && \
    apk add --no-cache zlib-dev libpng-dev nodejs npm && \
    rm -rf /var/cache/apk/*

RUN docker-php-ext-install gd

# Vapor's installation and symlink
RUN composer global require laravel/vapor-cli --update-with-dependencies && \
    ln -s -f /tmp/vendor/bin/vapor /usr/local/bin/
