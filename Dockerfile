FROM maven:3-jdk-8 AS build
WORKDIR /usr/src
COPY . .
RUN mvn clean install

FROM openjdk:8-alpine
COPY --from=build /usr/src/target/helloworld-0.0.1-SNAPSHOT.jar /usr/src/helloworld-0.0.1-SNAPSHOT.jar
EXPOSE 8000
ENTRYPOINT java -jar /usr/src/helloworld-0.0.1-SNAPSHOT.jar
