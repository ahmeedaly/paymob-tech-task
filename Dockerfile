FROM maven:3.8.4-openjdk-11 AS builder

COPY . /app
WORKDIR /app
RUN mvn clean package

FROM openjdk:11-jre-slim
WORKDIR /app

COPY --from=builder /app/target/*.jar /app/my-app.jar

CMD ["java", "-jar", "my-app.jar"]
