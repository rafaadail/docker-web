FROM ubuntu:latest

RUN apt-get update && apt-get install -y tzdata && \
    apt-get install -y software-properties-common language-pack-en-base \
    && LC_ALL=en_US.UTF-8 add-apt-repository -y ppa:ondrej/php \
    && apt-get update \
    && apt-get install -y php7.1 php7.1-fpm php7.1-mysql mcrypt php7.1-gd curl \
       php7.1-curl php-redis php7.1-mbstring  \
       php7.1-dom \
		php7.1-ctype \
		php7.1-fpm \
		php7.1-gd \
		php7.1-intl \
		php7.1-json \
        php7.1-bcmath \
		php7.1-mcrypt \
		php7.1-mysqlnd \
		php7.1-opcache \
		php7.1-pdo \
		php7.1-mysql \
		php7.1-posix \
		php7.1-xml \
        php7.1-gd \
		php7.1-iconv \
		php7.1-phar \
		php7.1-pgsql \
		php7.1-iconv \
		php7.1-phar \
		php7.1-zip \
		wkhtmltopdf \
        nodejs \
        npm \
		xvfb \
		sendmail supervisor \
    && mkdir /run/php \
    && apt-get clean

COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf

RUN sed -i -e 's/listen = \/run\/php\/php7.1-fpm.sock/listen = 0.0.0.0:9000/g' /etc/php/7.1/fpm/pool.d/www.conf \
    && sed -i -e 's/;daemonize = yes/daemonize = no/g' /etc/php/7.1/fpm/php-fpm.conf

# Install composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

RUN service php7.1-fpm start

EXPOSE 9000

CMD ["/usr/bin/supervisord"]
