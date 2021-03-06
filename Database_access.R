# Load WCA data -----------------------------------------------------------
library(data.table);library(dplyr);library(downloader)
temp <- tempfile()
link <- ('https://www.worldcubeassociation.org/results/misc/WCA_export113_20200506T040001Z.tsv.zip')
download(link, dest="dataset.zip", mode="wb")
unzip ("dataset.zip")
for(a in dir(pattern='tsv')){
  assign(gsub('.tsv|WCA_export_','',a),fread( a,encoding = 'UTF-8'))
}

