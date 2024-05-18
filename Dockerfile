FROM gradle
ENV ANDROID_HOME=/android_sdk
WORKDIR /android_sdk/cmdline-tools/latest

COPY cmdline-tools .
RUN yes | sh ./bin/sdkmanager --sdk_root=$ANDROID_HOME --licenses
RUN sh ./bin/sdkmanager "platform-tools"
#RUN (yes "" 2>/dev/null || true) | sh ./bin/sdkmanager --licenses