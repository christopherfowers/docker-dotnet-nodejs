FROM microsoft/dotnet:latest
MAINTAINER Promact Infotech<info@promactinfo.com>
# Install required packages
RUN apt-get update -q \
    && DEBIAN_FRONTEND=noninteractive apt-get install -yq --no-install-recommends \
      ca-certificates \           
      apt-transport-https \
	  git \
	  curl \
	  wget \
	  bzip2 \
	  jq

ENV HOME /root

RUN curl -sL https://deb.nodesource.com/setup_8.x | bash - && \
         apt-get install -y nodejs

# install bower
RUN npm install --global bower gulp-cli typescript typings
