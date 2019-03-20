FROM rocker/r-base

RUN apt-get update && apt-get install -y python-pip
RUN pip install boto3
RUN R -e "install.packages('reticulate', repos = 'https://cran.rstudio.com/')"
