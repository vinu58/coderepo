FROM mohandav/testnshop:freshnshop
COPY ./views/ /var/www
COPY nginx.conf /etc/nginx/nginx.conf
EXPOSE 8000
ENTRYPOINT ["nginx","-g","daemon off;"]
