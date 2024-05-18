FROM amd64/ubuntu
ENV ANDROID_HOME=/android_sdk


RUN apt-get update && apt-get upgrade -y
RUN apt-get -y install openjdk-17-jdk
ENV JAVA_HOME=/usr/lib/jvm/java-17-openjdk-amd64

RUN apt-get -y install unzip
WORKDIR /opt/gradle
COPY gradle-8.7.zip .
RUN unzip gradle-8.7.zip
ENV PATH=$PATH:/opt/gradle/gradle-8.7/bin


WORKDIR /android_sdk/cmdline-tools/latest

COPY cmdline-tools .
RUN yes | sh ./bin/sdkmanager --sdk_root=$ANDROID_HOME --licenses
RUN sh ./bin/sdkmanager "platform-tools"
#RUN (yes "" 2>/dev/null || true) | sh ./bin/sdkmanager --licenses