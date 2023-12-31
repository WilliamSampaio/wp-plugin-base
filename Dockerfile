FROM wordpress:6.3.1-apache

RUN chown -R www-data:www-data /var/www/html

RUN apt update && \
    apt install -y wget

RUN wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
RUN chmod +x wp-cli.phar
RUN mv wp-cli.phar /usr/local/bin/wp
RUN wp --info

COPY install-plugins.sh .
RUN chmod +x install-plugins.sh
RUN mv install-plugins.sh /usr/local/bin/install-plugins
