#### Packages needed ####

library(lumi)
library(limma)
library(geneplotter)
library(dplyr)
library(ComplexHeatmap)
library (illuminaHumanv4.db)

#### Set working directory #

setwd("~/Desktop/URRAY")

####  Obtain raw data as provided by the lab

fileName <- 'TableControl-Bkg-NoNorm.txt' 


## Extract Illumina data from txt file ##

lumi.raw <- lumiR(fileName,annotationColumn=c("SYMBOL", "PROBE_ID","DEFINITION"))
save(lumi.raw, file="lumi.raw-object")
write.exprs(lumi.raw,file="lumi.raw_raw data.txt")

