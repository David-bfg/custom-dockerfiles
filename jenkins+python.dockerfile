FROM jenkins/jenkins:lts-jdk17

# Switch to the root user to install software
USER root

# add Python3 and pip packages to docker image
RUN apt-get update && \
  apt-get install -y python3 python3-pip && \
  apt-get clean

# Switch back to the jenkins user
USER jenkins