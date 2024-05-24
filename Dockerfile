FROM openjdk:22-jdk

WORKDIR /app
# VOLUME /tmp

COPY auth/target/*.jar app.jar

ENTRYPOINT ["java", "-jar", "app.jar"]