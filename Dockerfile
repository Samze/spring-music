FROM openjdk:8-jdk-alpine
VOLUME /tmp
EXPOSE 8080
ARG JAR_FILE=build/libs/spring-music-1.0.jar

ADD ${JAR_FILE} spring-music.jar
ADD shim.sh shim.sh
ENTRYPOINT ["/shim.sh"]
