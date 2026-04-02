FROM eclipse-temurin:21-jdk-jammy

WORKDIR /app

# Copy everything
COPY . .

# Build jar inside Docker
RUN chmod +x mvnw
RUN ./mvnw clean package -DskipTests

# Run app
ENTRYPOINT ["java","-jar","target/app-0.0.1-SNAPSHOT.jar"]