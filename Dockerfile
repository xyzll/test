FROM nginx:1.12

RUN mkdir -p /web
ADD ./site /web
ADD ./nginx.conf  /etc/nginx/nginx.conf
RUN chown -R www-data:www-data /web
RUN chown -R www-data:www-data /var/log/nginx
EXPOSE 80

STOPSIGNAL SIGQUIT

CMD ["nginx", "-g", "daemon off;"]
