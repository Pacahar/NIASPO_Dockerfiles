FROM maven:3.8.4-openjdk-11 AS build

WORKDIR /app

COPY /project .

RUN mvn clean package

FROM openjdk:11-jre-slim

COPY --from=build /app/target/*.jar .

CMD ["java", "-jar", "project-1.0-SNAPSHOT.jar"]
