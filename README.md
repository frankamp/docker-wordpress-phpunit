I want all the coolness from

https://github.com/docker-library/wordpress/blob/master/apache/docker-entrypoint.sh

re: dynamic @ runtime setup of WP

yet be running the executable phpunit with all the setup ready


wp core config --allow-root --prompt --dbname=db --dbuser=root
1/11 --dbname=<dbname>: db
2/11 --dbuser=<dbuser>: root
3/11 [--dbpass=<dbpass>]: example
4/11 [--dbhost=<dbhost]

while in /var/www/html (which is where you will be by default)

/entrypoint.sh phpunit
wp scaffold plugin-tests recipe-pro --allow-root

# bash bin/install-wp-tests.sh wordpress_test root '' localhost latest
# for me that is:

bash bin/install-wp-tests.sh wordpress_test root example mysql latest
