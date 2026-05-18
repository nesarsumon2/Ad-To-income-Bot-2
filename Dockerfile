FROM php:8.2-apache

# Apache এর পোর্ট Render এর সাথে মেলানো
RUN sed -i 's/80/${PORT}/g' /etc/apache2/sites-available/000-default.conf /etc/apache2/ports.conf

# প্রজেক্টের সব ফাইল কপি করা
COPY . /var/www/html/

# ফাইল ও ফোল্ডারের পারমিশন ঠিক করা
RUN chown -R www-data:www-data /var/www/html && chmod -R 777 /var/www/html

EXPOSE 80
