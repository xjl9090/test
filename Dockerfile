FROM sf-docker-base.common.repositories.cloud.sap/sapmachine:21.0.3-distroless@sha256:7cec955ef3844545e3e2a8bfc63bba5a5ef587000c00fa1037b592332ee42df7
COPY ./build/libs/test_github_g-0.0.1-SNAPSHOT.jar ./test_github_g.jar
EXPOSE 8080
EXPOSE 8081
ENV SPRING_PROFILES_ACTIVE=local
ENTRYPOINT ["java", "-Duser.timezone=UTC", "-Dspring.profiles.active=${SPRING_PROFILES_ACTIVE}", "-jar", "test_github_g.jar"]
