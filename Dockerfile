# Utiliser une image Java officielle
FROM openjdk:17-jdk-slim

# Définir le répertoire de travail
WORKDIR /app

# Copier le jar généré dans le conteneur
COPY target/student-management-0.0.1-SNAPSHOT.jar app.jar

# Exposer le port utilisé par Spring Boot
EXPOSE 8080

# Commande pour exécuter le jar
ENTRYPOINT ["java","-jar","app.jar"]
