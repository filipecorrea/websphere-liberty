FROM websphere-liberty
COPY Sample.war /opt/ibm/wlp/usr/servers/defaultServer/dropins/
ENV LICENSE accept
