FROM adoptopenjdk/openjdk11:alpine-jre
ARG JAR=PROJECT_ARTIFACT-PROJECT_VERSION.jar
ENV EXECUTABLE=$JAR
COPY target/$EXECUTABLE /opt/
CMD java $JAVA_OPTS -server -XX:+UseContainerSupport -jar /opt/$EXECUTABLE
