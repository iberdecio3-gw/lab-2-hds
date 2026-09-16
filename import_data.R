url <- paste0("https://www.ncbi.nlm.nih.gov/geo/download/",
              "?acc=GSE52778&format=file&file=GSE52778_All_Sample_FPKM_Matrix.txt.gz")

download.file(url, "fpkm.txt.gz", mode = "wb")

fpkm <- read.delim(gzfile("fpkm.txt.gz"))
