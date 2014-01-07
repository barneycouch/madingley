library(ggplot2)
setwd("~/Dropbox/code/madingley/chimps/chimp-DatasetS1S2/Dataset_S2")
chr21 <- read.table("Chr21Genotypes.txt",head=T)

ggplot(chr21,aes(x=pos)) + geom_histogram(alpha=0.5)