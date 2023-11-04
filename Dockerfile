FROM maven:3.8.2-openjdk-21

WORKDIR /usr/src/app

COPY pom.xml .
COPY src ./src

#FROM openjdk:11

COPY target/devops-project-0.0.1-SNAPSHOT.jar /usr/local/lib/devops-poc.jar

EXPOSE 8080

ENTRYPOINT ["java","-jar","/usr/local/lib/devops-poc.jar"]
