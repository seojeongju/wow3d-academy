FROM openjdk:17
COPY . /app
WORKDIR /app

# 🔑 실행 권한 추가
RUN chmod +x ./gradlew

# 📦 빌드 실행
RUN ./gradlew build

# 🌐 외부 접속 포트
EXPOSE 8080

# 🚀 실행 명령어 (JAR 이름은 실제로 생기는 jar 파일명으로 바꿔야 해요)
CMD ["java", "-jar", "build/libs/wow3d-academy-0.0.1-SNAPSHOT.jar"]
