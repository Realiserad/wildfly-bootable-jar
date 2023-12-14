FROM maven:3-eclipse-temurin-17 AS builder

COPY . /build

WORKDIR /build

RUN mvn --no-transfer-progress --file pack/pom.xml install

RUN mvn --no-transfer-progress package

FROM alpine:3

COPY --from=builder /build/target/*bootable.jar /app/wildfly.jar

RUN apk add openjdk17-jre

ENTRYPOINT ["java", "-jar", "/app/wildfly.jar"]