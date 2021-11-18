FROM openjdk:11.0.12-slim
VOLUME /tmp
EXPOSE 8761
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} eureka-service.jar
ENTRYPOINT ["java","-jar","/eureka-service.jar"]