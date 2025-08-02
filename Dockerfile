FROM openjdk:17-jdk-slim

# Install dependencies for Java Swing (font rendering, etc.)
RUN apt-get update && apt-get install -y \
    libfreetype6 \
    libfontconfig1 \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /app
COPY . .
RUN javac Code/dsa.java
CMD ["java", "Code.dsa"]
