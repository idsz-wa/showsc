# showsc
single cell web browser
## usage:

#### make sure seurat rds in the work dir 

`< cd data_process && docker build -t scweb . && docker run -it  -v ${PWD}:/opt/soft scweb sh -c "/opt/conda/envs/sc_web/bin/Rscript seurat.R" >`  

`<  cd shiny_web && docker build -t shiny:build . && docker run --rm -p 3838:3838 -d  -v {you apps dir}:/srv/shiny-server/  -v {log dir}:/var/log/shiny-server shiny:build >`  
