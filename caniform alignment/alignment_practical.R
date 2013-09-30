setwd("/Users/Barney/Desktop/madingley stuff")
library(ape)
f <- read.FASTA("Caniform.COI.fasta")
d <- dist.dna(f, model="F84")
#plot(d)
p <- nj(d)
p$node.label <- boot.phylo(p,f,function(x)nj(dist.dna(x, model='F84')))
plot.phylo(p, show.node.label=TRUE)
write.tree(p,file="caniform.tre")

#load in red panda data
library(seqinr)
pandacoi <- read.GenBank("AY598520")
write.fasta(pandacoi, names="redpanda", file.out="redpandacoi.FASTA")