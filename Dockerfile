FROM centos:latest
RUN yum -y update
RUN yum -y install httpd
ADD code /var/www/html
ENV db_host=test db_user=test db_pass=test123 db_port=3306 db_database=test
EXPOSE 80
CMD ["apachectl","-D","FOREGROUND"]
