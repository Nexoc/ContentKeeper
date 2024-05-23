FROM openjdk:21-jdk-slim

WORKDIR /app
# VOLUME /tmp

COPY auth/target/*.jar app.jar

ENTRYPOINT ["java", "-jar", "app.jar"]