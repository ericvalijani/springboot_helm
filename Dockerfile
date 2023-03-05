FROM novinrepo:8082/docker/oracle-jdk:11-buster
ENV TZ Asia/Tehran
RUN mkdir /app
WORKDIR /app
COPY . .
#ADD target/*.tar.gz /app
RUN useradd -u 10001 user1 && groupadd group1
USER user1:group1

ARG JAR_FILE=target/saber-0.0.1-SNAPSHOT.jar
ADD ${JAR_FILE} app.jar
CMD ["java", "-jar", "app.jar"]