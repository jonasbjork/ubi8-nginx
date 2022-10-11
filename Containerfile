FROM registry.access.redhat.com/ubi8/ubi

RUN dnf upgrade -y
RUN dnf install nginx -y
RUN sed -i 's/80 default_server/8080 default_server/g' /etc/nginx/nginx.conf
RUN sed -i 's/run\/nginx.pid/tmp\/nginx.pid/g' /etc/nginx/nginx.conf
RUN ln -sf /dev/stdout /var/log/nginx/access.log && ln -sf /dev/stderr /var/log/nginx/error.log

EXPOSE 8080

CMD ["nginx","-g","daemon off;"]






