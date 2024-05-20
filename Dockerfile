# Use an official Tomcat runtime as a base image
FROM tomcat:latest

# Remove the default ROOT application
RUN rm -rf /usr/local/tomcat/webapps/ROOT

# Copy your web application directory into the Tomcat webapps directory
COPY src/main/webapp /usr/local/tomcat/webapps/ROOT
