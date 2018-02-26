FROM jetbrains/teamcity-minimal-agent

RUN apt-get update -y && apt-get install -y sudo git bzip2 libfontconfig1

# nodejs
RUN curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -
RUN apt-get update -y && apt-get install -y nodejs

# cypress deps
RUN apt-get install -y libgtk2.0-0
RUN apt-get install -y libnotify-dev
RUN apt-get install -y \
    libgconf-2-4 \
    libnss3 \
    libxss1
RUN apt-get install -y \
    libasound2 \
    xvfb

RUN cd /home/buildagent/
RUN curl https://cdn.cypress.io/desktop/2.0.3/linux64/cypress.zip --output cypress.zip
RUN export CYPRESS_BINARY_VERSION=/home/buildagent/cypress.zip
