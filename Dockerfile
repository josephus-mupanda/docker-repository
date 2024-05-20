# Use the official Tomcat image from Docker Hub
FROM tomcat:10.1

# Remove the default webapps to ensure only your app is deployed
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy the WAR file into the webapps directory
COPY assignment.war /usr/local/tomcat/webapps/ROOT.war

# Expose the Tomcat default port
EXPOSE 8080

# Start Tomcat
CMD ["catalina.sh", "run"]

