FROM nginx:1.25

COPY ./config/app_nginx.conf /etc/nginx/sites-available/app
RUN ln -s /etc/nginx/sites-available/app /etc/nginx/sites-enabled/
RUN rm /etc/nginx/sites-enabled/default

EXPOSE 8081

CMD ["nginx", "-g", "daemon off;"]
