FROM rocker/shiny:latest

LABEL LABEL maintainer="CSM Computing Support <csm-servicedesk@calpoly.edu>"

RUN apt update && apt install -y \
    git \
    libssl-dev \
    libpoppler-cpp-dev \
    libtesseract-dev \
    libleptonica-dev \
    librsvg2-dev \
    tesseract-ocr-eng \
    libgdal-dev \
    libmagick++-dev \
    mesa-common-dev \
    libglu1-mesa-dev \
    && rm -rf /var/lib/apt/lists/*

COPY install.R /tmp/install.R
RUN R -f /tmp/install.R

COPY get-shiny-gists.sh /usr/bin/get-shiny-gists.sh
COPY shiny-server.conf /etc/shiny-server/shiny-server.conf

#USER shiny
CMD "/usr/bin/get-shiny-gists.sh"
    