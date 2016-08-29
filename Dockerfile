FROM nginx
COPY www /usr/share/nginx/html
RUN sed -i 's/listen       80/listen 5000/g' /etc/nginx/conf.d/default.conf
EXPOSE 5000
