# base 이미지
# jdk 파일이 필요하므로 openjdk:17, ubuntu:latest로 하는 경우 jdk설치 구문 추가 필요
FROM openjdk:17

# 설명
# maintainer: 작성자
LABEL maintainer="TH"
# version: 빌드버전
LABEL version="1.0.0"

# 호스트상에 만들어진 build된 JAR 파일 PATH
ARG JAR_FILE_PATH=build/libs/*.jar

# 호스트상에 만들어진 build된 jar 파일 이미지 내부에 app.jar 이름 파일로 복사
COPY ${JAR_FILE_PATH} app.jar

# 컨테이너 실행시 바로 수행할 명령어
ENTRYPOINT ["java", "-jar", "xxx.jar"]