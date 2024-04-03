FROM nginx:alpine

RUN rm -rf /usr/share/nginx/html/*

COPY build/web /usr/share/nginx/html

EXPOSE 80

RUN echo 'server { listen 80; location / { root /usr/share/nginx/html; try_files $uri $uri/ /index.html; } }' > /etc/nginx/conf.d/default.conf