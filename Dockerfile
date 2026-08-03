FROM nginx:alpine3.24-perl

WORKDIR /app
COPY ./config/app_nginx.conf /etc/nginx/conf.d/default.conf
COPY ./database/migrations.sh /app/migrations.sh
RUN chmod +x /app/migrations.sh

EXPOSE 8081

#CMD ["nginx", "-g", "daemon off;"]
