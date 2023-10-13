FROM eclipse-temurin:17-jdk-jammy
LABEL org.opencontainers.image.description Imágen para la materia gestión de la configuración
WORKDIR /app
COPY .mvn/ .mvn
COPY mvnw pom.xml ./
RUN ./mvnw dependency:resolve
COPY src ./src
EXPOSE 8080
CMD ["./mvnw", "spring-boot:run"]
