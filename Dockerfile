FROM alpine:3.3

MAINTAINER harupong <harupong [at] gmail.com>

RUN apk --update add openjdk8-jre && rm -rf /var/cache/apk/*

ENV GB_VERSION="3.10.1"
ADD https://github.com/gitbucket/gitbucket/releases/download/"$GB_VERSION"_h2-1.4.180/gitbucket.war /opt/gitbucket.war

RUN ln -s /gitbucket /root/.gitbucket
VOLUME /gitbucket

# Port for web and ssh
EXPOSE 8080 29418

CMD ["java", "-jar", "/opt/gitbucket.war"]
