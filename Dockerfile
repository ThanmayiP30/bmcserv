# Use a base image with JDK and Maven installed
FROM maven:3.8.4-openjdk-11 AS build

# Set the working directory in the container
WORKDIR /app

# Copy the Maven project files to the container
COPY pom.xml .

# Download dependencies and build the application
RUN mvn dependency:go-offline

# Copy the source code to the container
COPY src ./src

# Build the application
RUN mvn package

# Use a base image with a Java runtime environment
FROM tomcat:9.0-jdk11

# Copy the built WAR file from the previous stage to Tomcat's webapps directory
COPY --from=build /app/target/bookmycinema.war /usr/local/tomcat/webapps/

# Expose the default Tomcat port
EXPOSE 8080

# Start Tomcat when the container starts
CMD ["catalina.sh", "run"]

