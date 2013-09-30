library(ggplot2)
setwd("~/Dropbox/code/madingley/chimps/chimp-DatasetS1S2/Dataset_S2")
chr21 <- read.table("Chr21Genotypes.txt",head=T)

peanutblood <- as.data.frame(table(chr21$Blood.peanut))
peanutpoop <- as.data.frame(table(chr21$Poop.peanut))
peanutboth <- merge(peanutblood, peanutpoop, by="Var1")
names(peanutboth)[2] <- "Blood"
names(peanutboth)[3] <- "Poop"
#ggplot(peanutboth,aes(x=Var1)) + geom_point(size=3, colour="#CC0000",aes(y=Freq.x)) + geom_point(size=3, aes(y=Freq.y)) + xlab("Base Substitution") + ylab("Frequency")
peanutboth.long <- melt(peanutboth, id.vars="Var1")
names(peanutboth.long)[2] <- "sample.origin"
ggplot(peanutboth.long, aes(Var1, value, colour=sample.origin))+ geom_point(size=3) + xlab("Base Substitution") + ylab("Frequency")