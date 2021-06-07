FROM node:14.17.0-alpine

LABEL maintainer="dev@crowdlinker.com"

# Remove debconf errors
ENV DEBIAN_FRONTEND noninteractive
ENV TERM xterm-256color

# Install nano
RUN apk add nano

# Add colors to bash commands
COPY .docker-prompt /etc/.docker-prompt
RUN echo '. /etc/.docker-prompt' >> /etc/bash.bashrc \
  && echo '. /etc/.docker-prompt' >> /root/.bashrc
