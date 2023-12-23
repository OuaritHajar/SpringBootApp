# Utilisez une image Maven pour construire l'application
#FROM maven:3.8-jdk-11 AS build
#WORKDIR /app
#COPY ./pom.xml ./pom.xml
#COPY ./target ./target
#RUN mvn clean package -DskipTests

# Utilisez une image OpenJDK pour exécuter l'application
FROM openjdk:11
WORKDIR /app

#COPY --from=build /app/target/book-rest-api-reactjs-0.0.1-SNAPSHOT.jar app.jar

COPY target/book-rest-api-reactjs-0.0.1-SNAPSHOT.jar /app/application.jar
EXPOSE 8081
CMD ["java", "-jar", "application.jar"]



#mvn spring-boot:run








