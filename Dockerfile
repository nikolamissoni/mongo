FROM openjdk:15-alpine
ARG JAR_FILE
ADD target/${JAR_FILE} app.jar
VOLUME /mongotest
EXPOSE 8080
ENV JAVA_OPTS=""
ENTRYPOINT [ "sh", "-c", "java $JAVA_OPTS -Djava.security.egd=file:/dev/./urandom -jar /app.jar --spring.profiles.active=docker" ]
