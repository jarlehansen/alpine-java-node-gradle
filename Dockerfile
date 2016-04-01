FROM java:8-jdk-alpine
# Set path
ENV PATH ${PATH}:/usr/local/gradle-2.12/bin

# Install bash, nodejs
RUN apk add --update bash nodejs python && rm -rf /var/cache/apk/*

# Install gradle
WORKDIR /usr/local
RUN wget https://services.gradle.org/distributions/gradle-2.12-bin.zip && \
    unzip gradle-2.12-bin.zip && \
    rm -f gradle-2.12-bin.zip

WORKDIR /app
