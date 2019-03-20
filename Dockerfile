FROM rocker/r-base

RUN apt-get update && apt-get install -y python-pip
RUN pip install boto3
RUN R -e "install.packages(c('reticulate', 'devtools'), repos = 'https://cran.rstudio.com/')"
RUN R -e "devtools::install_github('daroczig/binancer', upgrade_dependencies = FALSE)"
