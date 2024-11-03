#!/usr/bin/dumb-init /bin/sh
echo "Running migrations and seeding the database..."
php artisan migrate
php artisan passport:keys
chmod -R 775 /var/www/html/storage

# Start php-fpm server on port 9000
echo "Starting php-fpm server..."
nginx # launch nginx in the background
php-fpm  # launch php-fpm process in the foreground

