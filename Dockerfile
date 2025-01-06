# Use a lightweight Java runtime image
FROM openjdk:17-jdk-slim

# Set working directory inside the container
WORKDIR /app

# Copy the JAR file into the container
COPY target/ftbsolutionscrm-0.0.1-SNAPSHOT.jar app.jar

# Expose the port the application runs on
EXPOSE 9090

# Command to run the application
ENTRYPOINT ["java", "-jar", "app.jar"]
