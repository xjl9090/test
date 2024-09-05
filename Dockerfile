# 使用官方的Java运行时作为基础镜像
FROM openjdk:21-jre-slim

# 将JAR文件复制到容器中
COPY target/test_github_g-0.0.1-SNAPSHOT.jar app.jar

# 设置容器启动时执行的命令
ENTRYPOINT ["java", "-jar", "/app.jar"]

# 暴露服务端口
EXPOSE 8080