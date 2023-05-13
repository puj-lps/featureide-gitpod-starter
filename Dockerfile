FROM gitpod/workspace-full-vnc:latest

# Install dependencies
RUN sudo apt-get update \
    && sudo apt-get install -y libx11-dev libxkbfile-dev libsecret-1-dev libgconf2-dev libnss3 libgtk-3-dev libasound2-dev twm \
    && sudo apt-get clean \
    && sudo rm -rf /var/cache/apt/* \
    && sudo rm -rf /var/lib/apt/lists/* \
    && sudo rm -rf /tmp/*

# Install FeatureIDE
RUN wget https://github.com/FeatureIDE/FeatureIDE/releases/download/v3.9.1/eclipse4.20.0committers-featureide3.9.1-linux64.zip -O /tmp/eclipse.zip -q \
    && sudo unzip /tmp/eclipse.zip eclipse/* -d /opt \
    && rm /tmp/eclipse.zip
#    && unzip /tmp/eclipse.zip workspace/*  \
