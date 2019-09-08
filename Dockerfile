FROM centos:7

# system update
RUN yum -y update && yum clean all

# install apache
RUN yum -y install httpd

# enable service.
RUN systemctl enable httpd

# exec.
CMD ["/sbin/init"]