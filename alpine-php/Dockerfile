FROM jimmybeats/alpine-php-nginx-base-container

MAINTAINER James Beattie<jamesbeattie@gmail.com>

# Install packages
RUN apk --no-cache add git bash curl composer wget python py-pip \
    && pecl install xdebug-2.9.2 \
    && docker-php-ext-enable xdebug

# Install Symfony CLI
RUN wget https://get.symfony.com/cli/installer -O - | bash \
    && mv ~/.symfony/bin/symfony /usr/local/bin/symfony

# Install PHPUnit
RUN wget -O phpunit https://phar.phpunit.de/phpunit-9.phar
RUN chmod +x phpunit

# Install aws-cli
RUN apk -Uuv add groff less python py-pip
RUN pip install awscli
RUN apk --purge -v del py-pip
RUN rm /var/cache/apk/*