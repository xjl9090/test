FROM eclipse-temurin:21-jdk
COPY ./build/libs/test-0.0.1-SNAPSHOT.jar ./test_github_g.jar
EXPOSE 8080
EXPOSE 8081
ENV SPRING_PROFILES_ACTIVE=local
ENTRYPOINT ["java", "-Duser.timezone=UTC", "-Dspring.profiles.active=${SPRING_PROFILES_ACTIVE}", "-jar", "test_github_g.jar"]
