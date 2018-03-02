#!/bin/bash


echo "Running app in production mode!"
nginx && uwsgi --ini /app.ini

