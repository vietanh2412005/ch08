# Stage 1: Build WAR using Maven
FROM maven:3.9.6-eclipse-temurin-17 AS build
WORKDIR /app

# Copy toàn bộ project vào container
COPY . .

# Tạo file WAR (xuất ra thư mục target/)
RUN mvn clean package -DskipTests

# Stage 2: Deploy WAR vào Tomcat
FROM tomcat:9.0-jdk17
# Xóa webapps mặc định để tránh xung đột
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy file WAR từ stage build sang Tomcat
COPY --from=build /app/target/*.war /usr/local/tomcat/webapps/ROOT.war

# Mở port 8080
EXPOSE 8080

# Start Tomcat
CMD ["catalina.sh", "run"]
