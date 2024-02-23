FROM tomcat:8-jre8
RUN sed -i 's/port="8080"/port="6565"/' /usr/local/tomcat/conf/server.xml
COPY target/*.war /usr/local/tomcat/webapps/
WORKDIR /usr/local/tomcat/bin 
EXPOSE 6565
