FROM rocker/shiny:latest

LABEL LABEL maintainer="CSM Computing Support <csm-servicedesk@calpoly.edu>"

COPY get-shiny-gists.sh /usr/bin/get-shiny-gists.sh

CMD "/usr/bin/get-shiny-gists.sh"
    