FROM tomcat:9.0

# Copy WAR as petclinic.war to deploy at /petclinic
COPY target/petclinic.war /usr/local/tomcat/webapps/ROOT.war

# Set Tomcat to run on port 8080 (we will map host 8083 to container 8080)
EXPOSE 8080
