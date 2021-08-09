add-apt-repository ppa:ondrej/php
apt-get update
apt install -y unzip php7.3 php7.3-mbstring php7.3-dom php7.3-zip

#composer v2.1.5
runuser -u vagrant -- wget https://raw.githubusercontent.com/composer/getcomposer.org/76a7060ccb93902cd7576b67264ad91c8a2700e2/web/installer -O - -q | php -- --quiet
if ! [ -d /home/vagrant/project ]; then
  runuser -u vagrant -- php composer.phar create-project laravel/laravel project
fi

runuser -u vagrant -- php /home/vagrant/project/artisan serve --host 0.0.0.0 --port 8000 &> artisian_serve.log&
