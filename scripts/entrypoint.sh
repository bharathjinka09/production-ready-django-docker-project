#!/bin/sh

set -e

python manage.py collectstatic --noinput

uwsgi --socket :8001 --master --enable-threads --module app.wsgi

