FROM wordpress:latest
MAINTAINER Josh Frankamp <frankamp@gmail.com>

COPY blankopcache/opcache-recommended.ini /usr/local/etc/php/conf.d/opcache-recommended.ini
RUN apt-get update && apt-get install -y less mysql-client subversion
RUN curl -OL https://phar.phpunit.de/phpunit.phar && chmod +x phpunit.phar && mv phpunit.phar /usr/local/bin/phpunit
RUN curl -OL https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar && chmod +x wp-cli.phar && mv wp-cli.phar /usr/local/bin/wp
COPY docker-entrypoint.sh /entrypoint.sh
COPY install-wp-test.sh /install-wp-test.sh
RUN chmod +x /entrypoint.sh /install-wp-test.sh
RUN /install-wp-test.sh latest

