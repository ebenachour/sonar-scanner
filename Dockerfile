FROM java:alpine
ENV SONAR_SCANNER_VERSION 3.2.0.1227

RUN apk update && \
    apk add --no-cache wget && \
    apk add --update nodejs  && \
    npm install newman --global && \
    wget https://binaries.sonarsource.com/Distribution/sonar-scanner-cli/sonar-scanner-cli-${SONAR_SCANNER_VERSION}.zip && \
    unzip sonar-scanner-cli-${SONAR_SCANNER_VERSION}.zip && \
    cd /usr/bin && ln -s /sonar-scanner-${SONAR_SCANNER_VERSION}/bin/sonar-scanner sonar-scanner && \
    apk del wget
