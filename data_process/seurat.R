library(Seurat)
library(ShinyCell)
             # Download example dataset (~200 MB)
seu = readRDS("All_sample_combined.demo.re.rds")
scConf = createConfig(seu)
makeShinyApp(seu, scConf, gene.mapping = TRUE,
             shiny.title = "Wubba lubba dub dub") 
