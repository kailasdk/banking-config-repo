# Use an official OpenJDK image
FROM openjdk:17-jdk-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy the built jar into the container
COPY target/config-server-*.jar config-server.jar

# Expose port 8888 for the config server
EXPOSE 8888

# Run the config server
ENTRYPOINT ["java", "-jar", "config-server.jar"]
