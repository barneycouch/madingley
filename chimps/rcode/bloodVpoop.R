library(ggplot2)
library(reshape)
setwd("~/Dropbox/code/madingley/chimps/chimp-DatasetS1S2/Dataset_S2")
chr21 <- read.table("Chr21Genotypes.txt",head=T)


###GRAPH DIFFERENCES BETWEEN BLOOD & POOP DATA###
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
  chimpname <- paste(toupper(substring(chimpname, 1,1)), substring(chimpname, 2), sep="") #capitalise first letter of chimp name
  #return(ggplot(bothtable.long, aes(Var1, value, colour=sample.origin)) + geom_point(size=3) + xlab("Base Substitution") + ylab("Frequency") + ggtitle(paste("Frequency Differences in", chimpname)))
  ggplot(bothtable.long, aes(Var1, value, colour=sample.origin)) + geom_point(size=3) + xlab("Base Substitution") + ylab("Frequency") + ggtitle(paste("Frequency Differences in", chimpname))
  ggsave(file=paste(chimpname, ".jpg", sep=""), path="/Users/Barney/Dropbox/code/madingley/chimps/rcode")
}