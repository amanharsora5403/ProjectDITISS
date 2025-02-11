# Use OpenJDK 17 base image
FROM openjdk:17-jdk-slim

# Copy the packaged JAR file into the container
COPY target/my-app.jar /usr/app/

# Set the working directory inside the container
WORKDIR /usr/app

# Expose port 8080 for the web application
EXPOSE 8080

# Run the JAR file when the container starts
CMD ["java", "-jar", "my-app.jar"]
