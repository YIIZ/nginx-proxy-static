#!/bin/sh
rsync -crv ./assets /nginx/static/
rsync -cv ./nginx.conf /nginx/conf

node index.js
