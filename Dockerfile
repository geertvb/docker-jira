#
# Jira Dockerfile
#
# https://github.com/GeertVB/docker-jira
#

FROM 192.168.0.29:5000/geertvb/docker-atlassian-sdk

RUN \
  apt-get update && \
  apt-get -y upgrade

EXPOSE 2990
  
CMD atlas-run-standalone --product jira --version 6.2.5
