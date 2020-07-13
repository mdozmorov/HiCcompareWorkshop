FROM bioconductor/bioconductor_docker:devel

WORKDIR /home/rstudio

COPY --chown=rstudio:rstudio . /home/rstudio/

RUN apt-get update && \
    apt-get install -y libglpk-dev && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

RUN Rscript -e "BiocManager::install(update = TRUE, ask=FALSE)"
# RUN Rscript -e "devtools::install('.', dependencies=TRUE, repos = BiocManager::repositories())"
RUN Rscript -e "options(repos = c(CRAN = 'https://cran.r-project.org')); devtools::install('.', dependencies=TRUE, repos = BiocManager::repositories())"
