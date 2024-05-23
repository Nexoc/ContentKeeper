
# to create .jar automaticly ->  amazoncorretto-21-debian

FROM maven:3.9.6-amazoncorretto-21-debian AS build

WORKDIR /app

COPY ./auth/pom.xml .

COPY auth/src ./src

RUN mvn clean package

FROM openjdk:21-jdk-slim

WORKDIR /app

COPY --from=build /app/target/*.jar app.jar

ENTRYPOINT ["java", "-jar", "app.jar"]