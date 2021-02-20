FROM openjdk:8-jdk-alpine
COPY target/*.jar /spring-petclinic.jar
EXPOSE 8080
CMD ["java", "-jar", "/spring-petclinic.jar"]
