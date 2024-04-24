FROM drupal
RUN apt-get update && apt-get install -y libpq-dev

COPY ./drupal var/www/html/