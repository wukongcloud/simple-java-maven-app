FROM 47.74.144.175:8000/baselibrary/openjdk:8-jdk-alpine

EXPOSE 8080

COPY target/my-app-1.0.jar /app/simple-java-maven-app-1.0.ja

WORKDIR /app

RUN addgroup -S app && \
    adduser -S -g app app && \
    chown -R app:app /app

USER app

CMD java -jar simple-java-maven-app-1.0.jar
