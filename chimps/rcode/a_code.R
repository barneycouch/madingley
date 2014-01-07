library(ggplot2)
chimp = read.table("/Users/Barney/Dropbox/code/madingley/chimps/chimp-DatasetS1S2/Dataset_S2/Chr21Genotypes.txt", head=T)

#chr21-blood
flint=chimp[,4]
flint=as.vector(flint)
AA=flint=="AA"
TT=flint=="TT"
CC=flint=="CC"
GG=flint=="GG"
tabletotal=table(c(AA,TT,CC,GG),useNA="always")
tablevec=as.vector(tabletotal)
range=max(chimp["pos"])-min(chimp["pos"])
T=tablevec[2]+(tablevec[3]/4)
flintheterozygosity21=(((length(AA))-T)/range)

coty=chimp[,6]
coty=as.vector(coty)
AA=coty=="AA"
TT=coty=="TT"
CC=coty=="CC"
GG=coty=="GG"
tabletotal=table(c(AA,TT,CC,GG),useNA="always")
tablevec=as.vector(tabletotal)
T=tablevec[2]+ (tablevec[3]/4)
cotyheterozygosity21=(((length(AA))-T)/range)

kierra=chimp[,8]
kierra=as.vector(kierra)
AA=kierra=="AA"
TT=kierra=="TT"
CC=kierra=="CC"
GG=kierra=="GG"
tabletotal=table(c(AA,TT,CC,GG),useNA="always")
tablevec=as.vector(tabletotal)
T=tablevec[2]+ (tablevec[3]/4)
kierraheterozygosity21=(((length(AA))-T)/range)


peanut=chimp[,10]
peanut=as.vector(peanut)
AA=peanut=="AA"
TT=peanut=="TT"
CC=peanut=="CC"
GG=peanut=="GG"
tabletotal=table(c(AA,TT,CC,GG),useNA="always")
tablevec=as.vector(tabletotal)
T=tablevec[2]+ (tablevec[3]/4)
peanutheterozygosity21=(((length(AA))-T)/range)

sopulu=chimp[,12]
sopulu=as.vector(sopulu)
AA=sopulu=="AA"
TT=sopulu=="TT"
CC=sopulu=="CC"
GG=sopulu=="GG"
tabletotal=table(c(AA,TT,CC,GG),useNA="always")
tablevec=as.vector(tabletotal)
T=tablevec[2]+ (tablevec[3]/4)
sopuluheterozygosity21=(((length(AA))-T)/range)

judd=chimp[,14]
judd=as.vector(judd)
AA=judd=="AA"
TT=judd=="TT"
CC=judd=="CC"
GG=judd=="GG"
tabletotal=table(c(AA,TT,CC,GG),useNA="always")
tablevec=as.vector(tabletotal)
T=tablevec[2]+ (tablevec[3]/4)
juddheterozygosity21=(((length(AA))-T)/range)


flintheterozygosity21
cotyheterozygosity21
kierraheterozygosity21
peanutheterozygosity21
sopuluheterozygosity21
juddheterozygosity21

average21=(flintheterozygosity21+cotyheterozygosity21+kierraheterozygosity21+peanutheterozygosity21+
sopuluheterozygosity21+juddheterozygosity21)/6
average21



#chr21-fecal
flintf=chimp[,5]
flintf=as.vector(flintf)
AA=flintf=="AA"
TT=flintf=="TT"
CC=flintf=="CC"
GG=flintf=="GG"
tabletotal=table(c(AA,TT,CC,GG),useNA="always")
tablevec=as.vector(tabletotal)
rangef=max(chimp["pos"])-min(chimp["pos"])
T=tablevec[2]+(tablevec[3]/4)
flintheterozygosity21f=(((length(AA))-T)/rangef)

cotyf=chimp[,7]
cotyf=as.vector(cotyf)
AA=cotyf=="AA"
TT=cotyf=="TT"
CC=cotyf=="CC"
GG=cotyf=="GG"
tabletotal=table(c(AA,TT,CC,GG),useNA="always")
tablevec=as.vector(tabletotal)
T=tablevec[2]+ (tablevec[3]/4)
cotyheterozygosity21f=(((length(AA))-T)/rangef)

kierraf=chimp[,9]
kierraf=as.vector(kierraf)
AA=kierraf=="AA"
TT=kierraf=="TT"
CC=kierraf=="CC"
GG=kierraf=="GG"
tabletotal=table(c(AA,TT,CC,GG),useNA="always")
tablevec=as.vector(tabletotal)
T=tablevec[2]+ (tablevec[3]/4)
kierraheterozygosity21f=(((length(AA))-T)/rangef)


peanutf=chimp[,11]
peanutf=as.vector(peanutf)
AA=peanutf=="AA"
TT=peanutf=="TT"
CC=peanutf=="CC"
GG=peanutf=="GG"
tabletotal=table(c(AA,TT,CC,GG),useNA="always")
tablevec=as.vector(tabletotal)
T=tablevec[2]+ (tablevec[3]/4)
peanutheterozygosity21f=(((length(AA))-T)/rangef)

sopuluf=chimp[,13]
sopuluf=as.vector(sopuluf)
AA=sopuluf=="AA"
TT=sopuluf=="TT"
CC=sopuluf=="CC"
GG=sopuluf=="GG"
tabletotal=table(c(AA,TT,CC,GG),useNA="always")
tablevec=as.vector(tabletotal)
T=tablevec[2]+ (tablevec[3]/4)
sopuluheterozygosity21f=(((length(AA))-T)/rangef)

juddf=chimp[,15]
juddf=as.vector(juddf)
AA=juddf=="AA"
TT=juddf=="TT"
CC=juddf=="CC"
GG=juddf=="GG"
tabletotal=table(c(AA,TT,CC,GG),useNA="always")
tablevec=as.vector(tabletotal)
T=tablevec[2]+ (tablevec[3]/4)
juddheterozygosity21f=(((length(AA))-T)/rangef)


flintheterozygosity21f
cotyheterozygosity21f
kierraheterozygosity21f
peanutheterozygosity21f
sopuluheterozygosity21f
juddheterozygosity21f

average21f=(flintheterozygosity21f+cotyheterozygosity21f+kierraheterozygosity21f+peanutheterozygosity21f+
sopuluheterozygosity21f+juddheterozygosity21f)/6
average21f





#chrX-blood
chimpX = read.table("/Users/Barney/Dropbox/code/madingley/chimps/chimp-DatasetS1S2/Dataset_S2/ChrXGenotypes.txt", head=T)

rangeX=max(chimpX["pos"])-min(chimpX["pos"])
kierraX=chimpX[,8]
kierraX=as.vector(kierraX)
AA=kierraX=="AA"
TT=kierraX=="TT"
CC=kierraX=="CC"
GG=kierraX=="GG"
tabletotal=table(c(AA,TT,CC,GG),useNA="always")
tablevec=as.vector(tabletotal)
T=tablevec[2]+ (tablevec[3]/4)
kierraheterozygosityX=(((length(AA))-T)/rangeX)


peanutX=chimpX[,10]
peanutX=as.vector(peanutX)
AA=peanutX=="AA"
TT=peanutX=="TT"
CC=peanutX=="CC"
GG=peanutX=="GG"
tabletotal=table(c(AA,TT,CC,GG),useNA="always")
tablevec=as.vector(tabletotal)
T=tablevec[2]+ (tablevec[3]/4)
peanutheterozygosityX=(((length(AA))-T)/rangeX)

kierraheterozygosityX
peanutheterozygosityX

averageX=(kierraheterozygosityX+peanutheterozygosityX)/2
averageX



#chrX-fecal
rangeXf=max(chimpX["pos"])-min(chimpX["pos"])
kierraXf=chimpX[,9]
kierraXf=as.vector(kierraXf)
AA=kierraXf=="AA"
TT=kierraXf=="TT"
CC=kierraXf=="CC"
GG=kierraXf=="GG"
tabletotal=table(c(AA,TT,CC,GG),useNA="always")
tablevec=as.vector(tabletotal)
T=tablevec[2]+ (tablevec[3]/4)
kierraheterozygosityXf=(((length(AA))-T)/rangeXf)


peanutXf=chimpX[,11]
peanutXf=as.vector(peanutXf)
AA=peanutXf=="AA"
TT=peanutXf=="TT"
CC=peanutXf=="CC"
GG=peanutXf=="GG"
tabletotal=table(c(AA,TT,CC,GG),useNA="always")
tablevec=as.vector(tabletotal)
T=tablevec[2]+ (tablevec[3]/4)
peanutheterozygosityXf=(((length(AA))-T)/rangeXf)

kierraheterozygosityXf
peanutheterozygosityXf

averageXf=(kierraheterozygosityXf+peanutheterozygosityXf)/2
averageXf





##GRAPHS



#graphs-chr21 fecal

flint=chimp[,c(2,5)]
testf=flint[,2]=="AC" | flint[,2]=="AG" | flint[,2]=="AT"| flint[,2]=="CG"| flint[,2]=="CT"| flint[,2]=="GT"
flint[,3]=testf
hist(flint[,1][flint[,3]], breaks=1500, main="Flint Heterozygosity Map of Chr21 from fecal sample ", xlab="Position", ylab="Frequency of Heterozygous Posistions")

####bc alteration####

#graphs - cr21 fecal
flintplotdf <- as.data.frame(flint[,1][flint[,3]])
ggplot(flintplotdf,aes(x=flintplotdf[,1])) + geom_histogram(binwidth=10000) + xlab("Location") + ylab("Frequency") + ggtitle("Heterozygosity")

makeplotdf <- function(chimpname) {
	chimpplotdf <- as.data.frame(chimpname[,1][chimpname[,3]])
	return(chimpplotdf)
	#ggplot(chimpplotdf,aes(x=chimpplotdf[,1])) + geom_histogram()
}

plotheterodf <- function(df) {
  ggplot(df,aes(x=df[,1])) + geom_histogram()
}

####

coty=chimp[,c(2,7)]
testc=coty[,2]=="AC" | coty[,2]=="AG" | coty[,2]=="AT"| coty[,2]=="CG"| coty[,2]=="CT"| coty[,2]=="GT"
coty[,3]=testc
hist(coty[,1][coty[,3]], breaks=1500, main="Coty Heterozygosity Map of Chr21 from fecal sample ", xlab="Position", ylab="Frequency of Heterozygous Posistions")

kierra=chimp[,c(2,9)]
testk=kierra[,2]=="AC" | kierra[,2]=="AG" | kierra[,2]=="AT"| kierra[,2]=="CG"| kierra[,2]=="CT"| kierra[,2]=="GT"
kierra[,3]=testk
hist(kierra[,1][kierra[,3]], breaks=1500, main="Kierra Heterozygosity Map of Chr21 from fecal sample ", xlab="Position", ylab="Frequency of Heterozygous Posistions")


peanut=chimp[,c(2,11)]
testp=peanut[,2]=="AC" | peanut[,2]=="AG" | peanut[,2]=="AT"| peanut[,2]=="CG"| peanut[,2]=="CT"| peanut[,2]=="GT"
peanut[,3]=testp
hist(peanut[,1][peanut[,3]], breaks=1500, main="Peanut Heterozygosity Map of Chr21 from fecal sample ", xlab="Position", ylab="Frequency of Heterozygous Posistions")


sopulu=chimp[,c(2,13)]
tests=sopulu[,2]=="AC" | sopulu[,2]=="AG" | sopulu[,2]=="AT"| sopulu[,2]=="CG"| sopulu[,2]=="CT"| sopulu[,2]=="GT"
sopulu[,3]=tests
hist(sopulu[,1][sopulu[,3]], breaks=1500, main="Sopulu Heterozygosity Map of Chr21 from fecal sample ", xlab="Position", ylab="Frequency of Heterozygous Posistions")


judd=chimp[,c(2,15)]
testj=judd[,2]=="AC" | judd[,2]=="AG" | judd[,2]=="AT"| judd[,2]=="CG"| judd[,2]=="CT"| judd[,2]=="GT"
judd[,3]=testj
hist(judd[,1][judd[,3]], breaks=1500, main="Judd Heterozygosity Map of Chr21 from fecal sample ", xlab="Position", ylab="Frequency of Heterozygous Posistions")




%%graphs- chrX fecal

kierra=chimpX[,c(2,9)]
testk=kierra[,2]=="AC" | kierra[,2]=="AG" | kierra[,2]=="AT"| kierra[,2]=="CG"| kierra[,2]=="CT"| kierra[,2]=="GT"
kierra[,3]=testk
hist(kierra[,1][kierra[,3]], breaks=1500, main="Kierra Heterozygosity Map of X Chr from fecal sample ", xlab="Position", ylab="Frequency of Heterozygous Posistions")


peanut=chimpX[,c(2,11)]
testp=peanut[,2]=="AC" | peanut[,2]=="AG" | peanut[,2]=="AT"| peanut[,2]=="CG"| peanut[,2]=="CT"| peanut[,2]=="GT"
peanut[,3]=testp
hist(peanut[,1][peanut[,3]], breaks=1500, main="Peanut Heterozygosity Map of X Chr from fecal sample ", xlab="Position", ylab="Frequency of Heterozygous Posistions")







##blood hetero graphs chr21

flint=chimp[,c(2,4)]
testf=flint[,2]=="AC" | flint[,2]=="AG" | flint[,2]=="AT"| flint[,2]=="CG"| flint[,2]=="CT"| flint[,2]=="GT"
flint[,3]=testf
hist(flint[,1][flint[,3]], breaks=1500, main="Flint Heterozygosity Map of Chr21 from blood sample ", xlab="Position", ylab="Frequency of Heterozygous Posistions")

coty=chimp[,c(2,6)]
testc=coty[,2]=="AC" | coty[,2]=="AG" | coty[,2]=="AT"| coty[,2]=="CG"| coty[,2]=="CT"| coty[,2]=="GT"
coty[,3]=testc
hist(coty[,1][coty[,3]], breaks=1500, main="Coty Heterozygosity Map of Chr21 from blood sample ", xlab="Position", ylab="Frequency of Heterozygous Posistions")

kierra=chimp[,c(2,8)]
testk=kierra[,2]=="AC" | kierra[,2]=="AG" | kierra[,2]=="AT"| kierra[,2]=="CG"| kierra[,2]=="CT"| kierra[,2]=="GT"
kierra[,3]=testk
hist(kierra[,1][kierra[,3]], breaks=1500, main="Kierra Heterozygosity Map of Chr21 from blood sample ", xlab="Position", ylab="Frequency of Heterozygous Posistions")


peanut=chimp[,c(2,10)]
testp=peanut[,2]=="AC" | peanut[,2]=="AG" | peanut[,2]=="AT"| peanut[,2]=="CG"| peanut[,2]=="CT"| peanut[,2]=="GT"
peanut[,3]=testp
hist(peanut[,1][peanut[,3]], breaks=1500, main="Peanut Heterozygosity Map of Chr21 from blood sample ", xlab="Position", ylab="Frequency of Heterozygous Posistions")


sopulu=chimp[,c(2,12)]
tests=sopulu[,2]=="AC" | sopulu[,2]=="AG" | sopulu[,2]=="AT"| sopulu[,2]=="CG"| sopulu[,2]=="CT"| sopulu[,2]=="GT"
sopulu[,3]=tests
hist(sopulu[,1][sopulu[,3]], breaks=1500, main="Sopulu Heterozygosity Map of Chr21 from blood sample ", xlab="Position", ylab="Frequency of Heterozygous Posistions")


judd=chimp[,c(2,14)]
testj=judd[,2]=="AC" | judd[,2]=="AG" | judd[,2]=="AT"| judd[,2]=="CG"| judd[,2]=="CT"| judd[,2]=="GT"
judd[,3]=testj
hist(judd[,1][judd[,3]], breaks=1500, main="Judd Heterozygosity Map of Chr21 from blood sample ", xlab="Position", ylab="Frequency of Heterozygous Posistions")



%%graphs- chrX blood


kierra=chimpX[,c(2,8)]
testk=kierra[,2]=="AC" | kierra[,2]=="AG" | kierra[,2]=="AT"| kierra[,2]=="CG"| kierra[,2]=="CT"| kierra[,2]=="GT"
kierra[,3]=testk
hist(kierra[,1][kierra[,3]], breaks=1500, main="Kierra Heterozygosity Map of X Chr from blood sample ", xlab="Position", ylab="Frequency of Heterozygous Posistions")


peanut=chimpX[,c(2,10)]
testp=peanut[,2]=="AC" | peanut[,2]=="AG" | peanut[,2]=="AT"| peanut[,2]=="CG"| peanut[,2]=="CT"| peanut[,2]=="GT"
peanut[,3]=testp
hist(peanut[,1][peanut[,3]], breaks=1500, main="Peanut Heterozygosity Map of X Chr from blood sample ", xlab="Position", ylab="Frequency of Heterozygous Posistions")


