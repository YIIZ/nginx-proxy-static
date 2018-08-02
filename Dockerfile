FROM jwilder/nginx-proxy:alpine

# TODO by container name?

# add static support
# https://github.com/jwilder/nginx-proxy/blob/master/nginx.tmpl
# patch by sed https://unix.stackexchange.com/a/49438
COPY nginx.tmpl.patch /app/nginx.tmpl.patch
RUN sed -i -e '/location \/ {/{r nginx.tmpl.patch' -e 'd}' /app/nginx.tmpl
VOLUME /srv
