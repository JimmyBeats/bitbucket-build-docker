FROM debian:buster

MAINTAINER James Beattie

# Install Dependencies
RUN apt-get -y update \
    && apt-get -y install git unzip zlib1g-dev tofrodos yui-compressor \
    jq ruby wget python python-pip curl wget

# Install AWS CLI
RUN pip install awscli

# Install Bitbucket/Snippet CLI tools
RUN pip install pybitbucket
RUN pip install git+https://bitbucket.org/atlassian/snippet.git

# Set Tar compression to maximum
RUN export GZIP=-9

# Clear all unnecessary files
RUN apt-get autoremove -y \
&& apt-get clean all
