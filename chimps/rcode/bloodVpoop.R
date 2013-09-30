library(ggplot2)
library(reshape)
setwd("~/Dropbox/code/madingley/chimps/chimp-DatasetS1S2/Dataset_S2")
chr21 <- read.table("Chr21Genotypes.txt",head=T)

compareBloodPoop <- function(chimpname) {
  bloodcol <- paste("Blood.", chimpname, sep="")
  poopcol <- paste("Poop.", chimpname, sep="")
  bloodtable <- as.data.frame(table(chr21[,bloodcol]))
  pooptable <- as.data.frame(table(chr21[,poopcol]))
  bothtable <- merge(bloodtable, pooptable, by="Var1")
  names(bothtable)[2] <- "Blood"
  names(bothtable)[3] <- "Poop"
  bothtable.long <- melt(bothtable, id.vars="Var1")
  names(bothtable.long)[2] <- "sample.origin"
  return(ggplot(bothtable.long, aes(Var1, value, colour=sample.origin)) + geom_point(size=3) + xlab("Base Substitution") + ylab("Frequency"))
}