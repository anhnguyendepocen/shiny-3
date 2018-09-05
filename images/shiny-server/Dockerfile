FROM 822466877299.dkr.ecr.us-west-2.amazonaws.com/shiny-base:latest

LABEL LABEL maintainer="CSM Computing Support <csm-servicedesk@calpoly.edu>"

COPY ../../shiny-apps/* /srv/shiny-server
COPY shiny-server.conf /etc/shiny-server/shiny-server.conf

#USER shiny
CMD "/usr/bin/shiny-server.sh"
    