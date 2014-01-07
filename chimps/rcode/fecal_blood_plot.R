library(ggplot2)
fb <- read.table("~/Dropbox/code/madingley/chimps/chimp-DatasetS1S2/fb.csv")

#model dat shit#
fb.model <- lm(fecal ~ blood, data=fb)
summary(fb.model)$r.squared

#plot dat shit#
ggplot(fb,aes(x=fecal,y=blood)) + geom_point() + stat_smooth(method="lm") + xlab("Fecal Value") + ylab("Blood Value") + ggtitle("Fecal vs Blood Heterozygosity Values (r=0.947)")

#plot dat model shit#
par(mfrow=c(2,2))
plot(aov(fb.model))