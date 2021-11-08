FROM 47.74.144.175:8000/baselibrary/openjdk:8-jdk-alpine

EXPOSE 8080

COPY --chown=app:app  target/my-app-1.0.jar /app/simple-java-maven-app-1.0.ja

WORKDIR /app

USER app

CMD java -jar simple-java-maven-app-1.0.jar
