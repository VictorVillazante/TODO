FROM openjdk:11.0.16-slim
RUN mkdir -p /opt/arqui_software/logs
VOLUME /opt/arqui_software/logs
ARG DEPENDENCY=target/dependency
COPY target/dependency/BOOT-INF/lib /app/lib
COPY target/dependency/META-INF /app/META-INF
COPY target/dependency/BOOT-INF/classes /app
ENTRYPOINT ["java","-cp","/app/com/example/todo/","TodoApplication.class"]