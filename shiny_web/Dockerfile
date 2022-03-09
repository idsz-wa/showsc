FROM rocker/shiny
RUN apt update && apt install libhdf5-dev -y
RUN R -e "reqPkg = c('ggrepel','shiny', 'shinyhelper', 'data.table', 'Matrix', 'DT', 'hdf5r','reticulate', 'ggplot2', 'gridExtra', 'magrittr', 'ggdendro');newPkg = reqPkg[!(reqPkg %in% installed.packages()[,'Package'])];if(length(newPkg)){install.packages(newPkg)}"
CMD ["/init"]
