FROM java:8
VOLUMN /tmp
ARG JAR_FILE
ADD ${JAR_FILE} /app/app.jar
WORKDIR /app/
EXPOSE 8888
ENTRYPOINT ["java","-jar","./app.jar"]