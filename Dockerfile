# filepath: Dockerfile
FROM openjdk:17-jdk-slim
WORKDIR /app
COPY . .
RUN javac Code/dsa.java
CMD ["java", "Code.dsa"]
