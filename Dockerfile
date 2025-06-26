FROM tomcat:9.0

# Clean default Tomcat webapps (optional, but we're keeping ROOT here)
# RUN rm -rf /usr/local/tomcat/webapps/*

# Copy WAR as petclinic.war to deploy at /petclinic
COPY target/petclinic.war /usr/local/tomcat/webapps/petclinic.war

# Set Tomcat to run on port 8080 (we will map host 8083 to container 8080)
EXPOSE 8080
