FROM ubuntu:20.04
RUN apt update
WORKDIR /opt/soft
RUN apt install wget gdebi-core -y
RUN wget --quiet https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh -O ~/miniconda.sh && \
    /bin/bash ~/miniconda.sh -b -p /opt/conda && \
    rm ~/miniconda.sh && \
    /opt/conda/bin/conda clean -tipsy && \
    ln -s /opt/conda/etc/profile.d/conda.sh /etc/profile.d/conda.sh && \
    echo ". /opt/conda/etc/profile.d/conda.sh" >> ~/.bashrc && \
    echo "conda activate sc_web" >> ~/.bashrc

ENV PATH /opt/conda/bin:$PATH
RUN conda create -n sc_web r-shiny r-shinyhelper  r-data.table r-matrix r-dt r-hdf5r r-reticulate \
    r-ggplot2 r-gridextra r-magrittr  r-ggdendro  r-glue r-readr  r-rcolorbrewer r-r.utils r-seurat r-devtools \
    r-biocmanager r-devtools -c conda-forge -y
COPY seurat.R /opt/soft
RUN /opt/conda/envs/sc_web/bin/R -e "devtools::install_github('SGDDNB/ShinyCell')"
#RUN wget https://download3.rstudio.org/ubuntu-14.04/x86_64/shiny-server-1.5.16.958-amd64.deb
#RUN gdebi shiny-server-1.5.16.958-amd64.deb

