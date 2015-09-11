wd <- "~/GitHub/Diabetic-Retinopathy-Detection"

setwd(wd)

# The following files are provided
#   - trainLabels.csv.zip
#   - sampleSubmission.csv.zip
#   - sample.zip
#   - train.zip.001
#   - train.zip.002
#   - train.zip.003
#   - train.zip.004
#   - train.zip.005
#   - test.zip.001
#   - test.zip.002
#   - test.zip.003
#   - test.zip.004
#   - test.zip.005
#   - test.zip.006
#   - test.zip.007

source("~/GitHub/Get-Raw-Data/download.R")
downloadKaggle("diabetic-retinopathy-detection","")

trnFile <- "train.csv"
tstFile <- "test.csv"

datalist <- list(
        train=read.csv(
                paste(wd,"\\",trnFile, sep=""), header=TRUE, as.is=TRUE), 
        test=read.csv(
                paste(wd,"\\",tstFile, sep=""), header=TRUE, as.is=TRUE)
        )