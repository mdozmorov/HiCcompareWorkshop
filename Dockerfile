FROM bioconductor/bioconductor_docker:devel

WORKDIR /home/rstudio

COPY --chown=rstudio:rstudio . /home/rstudio/

RUN apt-get update && \
    apt-get install -y libglpk-dev && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# RUN Rscript -e "BiocManager::install(update = TRUE, ask=FALSE)"
# RUN Rscript -e "BiocManager::install('edgeR', update = FALSE, ask=FALSE)"
# RUN Rscript -e "BiocManager::install('AnnotationDbi', update = FALSE, ask=FALSE)"
# RUN Rscript -e "BiocManager::install('HiCcompare', update = FALSE, ask=FALSE)"
# RUN Rscript -e "BiocManager::install('multiHiCcompare', update = FALSE, ask=FALSE)"
# RUN Rscript -e "BiocManager::install('IRanges', update = FALSE, ask=FALSE)"
# RUN Rscript -e "BiocManager::install('GenomicRanges', update = FALSE, ask=FALSE)"
# RUN Rscript -e "BiocManager::install('clusterProfiler', update = FALSE, ask=FALSE)"
# RUN Rscript -e "BiocManager::install('ROntoTools', update = FALSE, ask=FALSE)"
# RUN Rscript -e "BiocManager::install('DO.db', update = FALSE, ask=FALSE)"
# RUN Rscript -e "BiocManager::install('readr', update = FALSE, ask=FALSE)"
# RUN Rscript -e "devtools::install_github('HenrikBengtsson/TopDom', dependencies = TRUE, upgrade = 'never')"

# RUN Rscript -e "devtools::install('.', dependencies=TRUE, repos = BiocManager::repositories())"

# RUN Rscript -e "options(repos = c(CRAN = 'https://cran.r-project.org')); devtools::install('.', dependencies=TRUE, repos = BiocManager::repositories())"

RUN Rscript -e "options(repos = c(CRAN = 'https://cran.r-project.org')); devtools::install('.', dependencies=TRUE, build_vignettes=FALSE, repos = BiocManager::repositories())"