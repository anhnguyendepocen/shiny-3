FROM 822466877299.dkr.ecr.us-west-2.amazonaws.com/shiny-base:latest

LABEL LABEL maintainer="CSM Computing Support <csm-servicedesk@calpoly.edu>"

COPY get-shiny-gists.sh /usr/bin/get-shiny-gists.sh
COPY shiny-server.conf /etc/shiny-server/shiny-server.conf

#USER shiny
CMD "/usr/bin/get-shiny-gists.sh"
    