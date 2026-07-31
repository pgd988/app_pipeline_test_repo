FROM nginx:1.25

COPY ./config/app_nginx.conf /etc/nginx/conf.d/default.conf

EXPOSE 8081

#CMD ["nginx", "-g", "daemon off;"]
