url <- paste0("https://www.ncbi.nlm.nih.gov/geo/download/",
              "?acc=GSE52778&format=file&file=GSE52778_All_Sample_FPKM_Matrix.txt.gz")

# Download the file
download.file(
  url,
  "GSE52778_All_Sample_FPKM_Matrix.txt.gz",
  mode = "wb"
)

# Read the compressed tab-delimited file
fpkm <- read.table(
  gzfile("GSE52778_All_Sample_FPKM_Matrix.txt.gz"),
  header = TRUE,
  sep = "",
  check.names = FALSE
)

dim(fpkm)
colnames(fpkm)
